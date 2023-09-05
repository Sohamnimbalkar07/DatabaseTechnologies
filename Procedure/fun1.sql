drop function if exists fun1;
delimiter $
create function fun1(_deptno int) returns int
deterministic
begin
declare sum int ;
select sum(sal) into sum from emp where deptno = _deptno;
return sum;
end $
delimiter ;


