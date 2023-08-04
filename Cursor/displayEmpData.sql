delimiter //
create procedure dispEmpData()
begin
declare finished int default 0;
declare vname varchar(20);
declare vdt date;
declare empcur cursor for select ename,hiredate from emp where deptno=10;
declare continue handler for NOT FOUND set finished = 1;
open empcur;
label1:loop
fetch empcur into vname,vdt;
if finished = 1 then
	leave label1;
end if;
select vname,vdt;
end loop;
close empcur;
end//
delimiter ;
