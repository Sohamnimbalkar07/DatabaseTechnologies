drop procedure if exists pro5;
delimiter $
create procedure pro5(in name varchar(40))
begin
declare x int ;
declare a int default 1;
set x := length(name);
loop
if a <= x then
select substring(name,a,1) ;
set a = a+1;
end if;
end loop;
end $
delimiter ;



