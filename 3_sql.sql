show databases;

use sakila;

show tables;

select * from actor;

select actor_id,first_name, last_name,'ani' from actor;

select first_name,actor_id from actor;

select  first_name 
from actor;

select * from actor where actor_id=2;

select first_name, last_name from actor where actor_id=2;

select * from actor where actor_id between 2 and 7;

select * from actor where actor_id between 1 and 4;

select * from actor where actor_id in (2,7);
select *from actor where first_name in ('nick','ED');

select *from actor where actor_id=2 or actor_id=9;
 
 select* from actor where first_name='NICK' or actor_id>=44;
 
 select * from actor where first_name='nick' and actor_id>34;
 select * from actor  where first_name='nick' and actor_id>20;
 
-- like operator

select * from actor where first_name='ed';
 -- % -> 0 or more charcter first laterr
 select * from actor where first_name like 'E%';
 select * from actor where first_name like '%E';

select * from actor where first_name like 'E%' or 
first_name like 'T%';

select * from actor where first_name  like '_D%';
use sakila






