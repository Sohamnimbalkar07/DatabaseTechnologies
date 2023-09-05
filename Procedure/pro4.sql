

drop procedure if exists pro4;
delimiter $
create procedure pro4(emailID varchar(40))
begin
declare flag boolean default false;
select true into flag from login where email = emailID;
if flag then
select username, password from emp;
else
insert into logIN values(default,curdate(),curtime()); 
end if;
end $
delimiter ;

