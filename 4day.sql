use sakila;
select * from payment;

select amount from payment where payment_id in (1,3);

select * from payment where amount in (select amount 
from payment where payment_id in (1,3));

select * from payment where amount <= any (select amount 
from payment where payment_id in (1,3));

select * from payment where amount <all (select amount 
from payment where payment_id in (1,3));

select count(*) from payment where amount in (select amount 
from payment where payment_id in (1,3));


create database regex1;
use regex1;
create table xyz(id int);
insert into xyz values(-20);
select * from xyz;


create table employee1(eid int unsigned);
insert into employee1 values(2147483648);
select * from employee1;

create table abc(salary double(5,2));
insert into abc values(20.1);
insert into abc values(120.1);
insert into abc values(3420.1);
select * from abc;

drop table test_bool;
create table test_bool (i BOOL);
insert into test_bool values(true), (false);

select *from test_bool;
insert  into test_bool values(1)(0);


create table ep2(name1 char(4) );
insert into ep2 values("zz");
insert into ep2 values("zz k");
select name1, length(name1) from ep2;

create table ep_var(name1 varchar(3) );
insert into ep_var values("xy            ");
select name1, length(name1) from ep_var;

create table e1(dob date);
insert into e1 values('2024-12-07');
select * from e1;

create table e2(ti time);
insert into e2 values('2:59:55');
select * from e2;

use sakila;
select * from actor;

select first_name, if(first_name='NICK',0,1)
from actor;

select first_name, if(first_name='ED',2,'not value')
from actor;

select first_name, if(first_name='NICK',0,if(first_name='ED',2,'not value'))
from actor;

select first_name,
case
     when first_name='NICK' then 0
     when first_name='ED' then 1
     else 'no value'
END as 'newcol'
   from actor;
   
-- get the payment id customer id amount of
-- payment date and querter of payment date with the 
-- following in the amount AGR aaaaamount 7 doller se upr
-- ha to hame 10% KA AMAOUNT INCRESE KRNA HA
-- if the amount is greater then 2 doller then amount increse

use sakila;
select * from payment;
select payment_id,customer_id,amount,payment_date,
    CASE 
        WHEN amount > 7 THEN amount * 1.10  WHEN amount > 2 THEN amount * 1.05 
        ELSE amount 
    end as up_amount,
    QUARTER(payment_date) AS payment_quarter
FROM  payment;


