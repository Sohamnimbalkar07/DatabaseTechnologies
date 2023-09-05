

drop procedure if exists pro3;
delimiter $
create procedure pro3(in username varchar(40),in password varchar(40), in emailID varchar(40))
begin
insert into login values(username,password,emailID);

end $
delimiter ;


