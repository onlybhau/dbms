
delimiter //
create procedure amount_cal()
begin

declare amt,total float(8,2);
declare temp,seats,cnt,pid int(3);


declare c1 cursor for select no_of_seats,passenger_id from tickit where dor='2019-08-27';

select count(*) from tickit  where dor='2019-08-27' into temp;
select temp;
open c1;
repeat fetch c1 into seats,pid;
set amt=seats*2000;
update tickit set amount=amt where (dor='2019-08-27' AND passenger_id=pid);
set total=total+amt;
set cnt=cnt+1;
update tickit set status="c" where (dor='2019-08-27' AND passenger_id=pid);
until cnt=temp
end repeat;
close c1;
select total;
end //
delimiter ; 
