delimiter //
create procedure number()
begin
declare i int default 1;
declare x varchar(20) default '';
label1:loop
if i>20 then
leave label1;
end if;
set i=i+1;
if i mod 5!=0 then
iterate label1;
end if;
set x=concat(x,i,',');
end loop;
select x;
end//


delimiter ;
