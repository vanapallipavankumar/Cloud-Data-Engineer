show databases;
use manikanta;
show tables;

create table customer(
firstname varchar(20),
lastname varchar(25),
cust_id int,
country varchar(30));
show tables;
desc customer;

insert into customer values('Manikanta','Karinki',201,'Hyderbad');
insert into customer(firstname,lastname,cust_id)values('Srinivas','T',202);
insert into customer(firstname,lastname,cust_id,country)values('Srinivas','T',203,'Bangalore');
insert into customer values('xyz','abc',204,'India'),('Abc','Xyz',205,'India');

/*It change the entry column to same name*/
update customer set country='India';
select * from customer;
/*it changes the cell values in particular column*/
update customer set firstname='Balu' where cust_id=202;
update customer set country='USA' where cust_id=203;
/* it delete the row of the information what you are given the cell name infomation*/
delete from customer where firstname='xyz';
/* it drop the table in the existing database*/
drop table customer;
select * from customer;

/* Assignment Questions*/
/* 1.create database bank*/
create database Bank;
use Bank;

/*2.create "Bank_Invester" Table with followinf reqirements
product datatye 
quality datatype
price datatype
purchase_cost datatype
estimated_sale_price datatype */
create table Bank_Inventory (
product varchar(10),
quantity int,
price real,
purchase_cost decimal(8,2),
estimated_sale_price float);

/* 3.display the all coumn of the datatype and  size in bank_invester*/
desc Bank_Inventory;

/* 4. Create the Bank_holiday table 
holday you can use date datatype
start_time to datatype of date and time
end_time also accept the date and time along with time zone*/
create table Bank_Holidays(
holiday date,
start_time datetime,
end_time timestamp );

insert into Bank_Inventory values ('PayCard', 2,300.45,8000.87,9000.56);
insert into Bank_Inventory values('PayPoints', 4,200.89,7000.67,6700.56);


select * from Bank_Inventory;

update Bank_inventory set quantity = 10 where product = 'PayCard';


use manikanta;
show tables;

create table customer(
firstname varchar(20),
lastname varchar(25),
cust_id int,
country varchar(30));
show tables;
desc customer;

insert into customer values('Manikanta','Karinki',201,'Hyderbad');
insert into customer(firstname,lastname,cust_id)values('Srinivas','T',202);
insert into customer(firstname,lastname,cust_id,country)values('Srinivas','T',203,'Bangalore');
insert into customer values('xyz','abc',204,'India'),('Abc','Xyz',205,'India');

select * from customer;
/* out of the table i am expecting the only two columns*/
select firstname,lastname from customer;

/* if you want specific row details that time you can use where condition*/
select firstname,lastname
from customer
where country='India';

update customer set country='india' where cust_id=203;

select * from customer;

update customer set country='Bangalore' where cust_id=202;


/* it can be used as the either of the condition in sql*/

select * 
from customer
where country='India' or country='india';

select * from customer;
# read the customer from India whose customer is not 203 
select *
from customer 
where country='India' and cust_id<>203;

# Read the customer who are not from indian and their customer id is greater thean 203
select *
from customer 
where country<>'india' and cust_id>202;

# in the table in existing column is null vlaue or not cheking
select *
from customer
where country is null;

# it display the not null values in the existing table.
select *
from customer
where country is not null;

insert into customer(firstname,lastname,country)values('Babu','Bhaskar','Chennai');
select * from customer;

select *
from customer
where cust_id is not null;

select *
from customer
where country is null;            

insert into customer(firstname,lastname,cust_id)values('Sri','komaram',208);

select * from customer;

select * from
customer 
where country is null and cust_id>203;

select * 
from customer
where country is null;

# add the new columnend of the table
alter table customer
add column city varchar(15);
select * from customer;
# add the column in particular position
alter table customer
add column discount int after cust_id;
desc customer;
# change the data type of the column
alter table customer
modify discount float;
desc customer;

# cahnge the column into city to location
alter table customer 
change city loaction varchar(15);

# remove the column country in customer table
alter table customer drop column country;

select * from customer;

## Rename the table in existing database
rename table customer to cust;
select * from cust;
show tables;
















