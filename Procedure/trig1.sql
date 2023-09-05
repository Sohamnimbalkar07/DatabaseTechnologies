drop trigger if exists tr1;
delimiter $
create trigger tr1 after insert on  tr1 for each row
begin
insert into tr2 values(new.var,new.name);
end $
delimiter ;

