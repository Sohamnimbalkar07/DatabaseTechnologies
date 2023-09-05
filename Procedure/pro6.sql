drop procedure if exists pro6;
delimiter $
create procedure pro6(name varchar(40))
begin
declare str1 varchar(40) default "";
declare str2 varchar(40) default "";
declare str3 varchar(40) default "";
declare i int default 1;
declare j int default 0;
set j = length(name);
loop
if (i<= j) then
set str1 = substring(name,i,1);
if(ascii(str1)>=97 and ascii(str1)<=122 or ascii(str1)>=65 and ascii(str1)<=90) THEN
set str2 = concat(str2,str1);
else
set str3 = concat(str3,str1);
end if;
set i= i +1;
end if;
if (i = j) then
select str2;
select str3;
end if;
end loop;
end $
delimiter ;

