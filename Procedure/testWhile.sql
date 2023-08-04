 delimiter //
create procedure testWhile()
     begin
     declare i int default 0;
     declare data varchar(20);
     set data='';
     while i<=5 do
           set data=concat(data,i,',');
     set i = i+1;
     end while;
     select data;
     end//


delimiter ;
