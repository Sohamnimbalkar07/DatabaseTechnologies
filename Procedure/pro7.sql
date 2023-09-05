drop procedure if exists pro7;
delimiter $
create procedure pro7()
begin
declare _ename,_job varchar(40);
declare str varchar(40) default "";
declare i int;
declare c1 cursor for select ename,job from emp;
open c1;
lb1 : loop
fetch c1 into _ename,_job;
set i = length(_ename);
set str = concat(substring(_ename,1,1),"(",substring(_ename,2,i-1),")"," is " ,"[",_job,"]");
select str;
end loop lb1;
close c1;
end $
delimiter ;

