
delimiter //
create trigger update_lib before update on library for each row
begin
	insert into library_audit values(old.id,old.name);
end//
delimiter ;


delimiter //
create trigger delete_lib before delete on library for each row
begin
	insert into library_audit values(old.id,old.name);
end//
delimiter ;


delimiter //
create trigger insert_lib after insert on library for each row
begin
	insert into library_audit values(new.id,new.name);
end//
delimiter ;

