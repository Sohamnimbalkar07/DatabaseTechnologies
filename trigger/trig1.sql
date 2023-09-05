drop trigger if exists trig1;
delimiter $
create trigger trig1 after insert on t1  for each row
begin 
insert into t2 values(new.no,new.name);
end $
delimiter ;
