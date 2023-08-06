delimiter //
create procedure test_loop()
begin
declare i int default 1;
declare data varchar(20) default '';
xyz:loop
if i>5 then
leave xyz;
end if;
set data=concat(data,i,',');
set i=i+1;
end loop;
select data;
end//
delimiter ;
