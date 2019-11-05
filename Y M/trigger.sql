delimiter $$
create trigger lib1
after delete
on library for each row
begin
insert into oldlib values(old.bid,old.bname,old.bprice);
end $$
delimiter ;
