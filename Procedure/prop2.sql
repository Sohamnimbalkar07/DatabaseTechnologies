drop procedure if exists prop1;
delimiter $
create procedure prop1()
begin
select "hello world";
end;
delimiter;