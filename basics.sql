CREATE DATABASE bank;
CREATE SEQUENCE bankuser_id MINVALUE 1 START WITH 1
INCREMENT BY 1
CACHE 10;
create table bankuser(
	name varchar(45),
	id int primary key
);
insert into bankuser(name,id) values ( 'Oyster Merchant',nextval('bankuser_id'));
insert into TABLE_NAME(COL1, COL2) values (v1,v2);
select * from bankuser;
delete from bankuser where name like '%Fish%';
delete from bankuser where name ILIKE '%Fish%'; -- case insensitive
alter table bankuser add column address varchar(100);
alter table bankuser alter column address set DEFAULT 'Hyderabad';
update bankuser set address = 'Hyderabad' where address is NULL;



-- INNER JOIN (simple join)

--- only common elements will be picked.


select name , account.id , account.type from bankuser, account where bankuser.id = account.owner;

select name , account.id , account.type from bankuser inner join account on  bankuser.id = account.owner;

---- ( [-)(-] ) imagine 2 intersecting venn diagram it is ====== A n B == inner join.

---- if we want all the tables values from 1st table and null values for those that dont match in the
-- right side then its called the LEFT OUTER JOIN  A U (A n B) is left outer join

select name , account.id , account.type from bankuser inner join account on  bankuser.id = account.owner;

