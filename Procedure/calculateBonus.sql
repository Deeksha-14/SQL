delimiter //
create procedure calcBonus(in pnm varchar(20))
begin
declare vsal, vcomm, vbonus int;
select sal, comm into vsal, vcomm
from emp where ename = pnm;
if vsal < 2000
then set vbonus = vsal * 0.10 + ifnull(vcomm,0);
else
set vbonus = vsal * 0.15 + ifnull(vcomm,0);
end if;
 select pnm,vsal,vcomm,vbonus;

end//
delimiter ;
