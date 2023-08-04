delimiter //
create procedure dispData()
begin
declare finished int default 0;
declare vempno int;
declare vename varchar(20);
declare ecur cursor for select empno, ename from emp where deptno = 20;
declare continue handler for NOT FOUND set finished = 1;
open ecur;
label1:loop
fetch ecur into vempno,vename;
if finished = 1 then
	leave label1;
end if;
select vempno,vename;
end loop;
close ecur;
end//
delimiter ;
