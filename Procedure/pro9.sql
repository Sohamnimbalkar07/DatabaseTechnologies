drop procedure if exists pro9;
delimiter $
create procedure pro9()
begin
declare _job,_ename,str1 varchar(40);
declare y  int;
declare c1 cursor for select ename ,job from emp;
declare exist handler for 1329 select "no more record exists";
open c1;
loop
fetch c1 into _ename,_job;
set y = length(_ename);
set str1 = concat(left(_ename,1),"(",substring(_ename,2,y-1),") is","[",_job,"]");
select str1;
end loop;
close c1;
end $
delimiter ;

