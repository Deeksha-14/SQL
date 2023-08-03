create table clients(
	id int auto_increment primary key,
	name varchar(10),
	membership enum('Silver','Gold','Diamond'),
	interest set('Movie','Music','Concert')
);


insert into clients(name, membership, interest) values('Aman','Gold','Music');
insert into clients(name, membership, interest) values('Asin','Premium','Movie,Concert');
insert into clients(name, membership, interest) values('Ajit','Gold','Concert');
