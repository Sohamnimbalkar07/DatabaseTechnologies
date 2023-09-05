drop procedure if exists pro8;
delimiter $
create procedure pro8()
begin
declare _ename,_job,_gender,_pwd varchar(40);
declare _empno,_mgr,_sal,_deptno int;
declare c1 cursor for select ename,job,gender,pwd,empno,mgr,sal,deptno from emp;
loop
open c1;
fetch c1 into _ename,_job,_gender,_pwd,_empno,_mgr,_sal,_deptno;
select _ename,_job,_gender,_pwd,_empno,_mgr,_sal,_deptno;
close c1;
end loop;
end $
delimiter $


