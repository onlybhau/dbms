

create table bank(acount_no int(3) primary key,name varchar(30) not null,balance float(8,2));


insert bank values(1,"abc",10000),(2,"sdf",20000),(3,"xyz",30000),(4,"mno",40000);


create table banking(account_no int(3),name varchar(30));



delimiter //

create trigger update_bank before update on bank for each row 

begin

 insert into banking values(old.acount_no,old.name);

end //

delimiter ;



delimiter //

create trigger delete_bank before delete on bank for each row

begin
	
insert into banking values(old.acount_no,old.name);

end //

delimiter ;



delimiter //

create trigger insert_bank after insert on bank for each row
begin
	
insert into banking values(new.acount_no,new.name);

end //

delimiter ;



