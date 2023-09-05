drop procedure if exists prop2;
delimiter $
create procedure prop2()
begin
declare _empno, _sal,_deptno int;
declare _ename varchar(40);
declare c1 cursor for select empno,ename,sal,deptno from emp;
open c1;
fetch c1 into _empno,_ename,_sal,_deptno;
close c1;
end $
delimiter ;

