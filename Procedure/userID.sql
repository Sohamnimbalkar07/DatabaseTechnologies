drop procedure if exists userID;
delimiter $
create procedure userID(in name varchar(40), in lastname varchar(40), in emailID varchar(40))
begin
declare flag boolean default false;
select true into flag from login where email = emailID;
if flag then
select "already exists";
else 
insert into login values(name,lastname,emailID);
end if;
end $
delimiter ;