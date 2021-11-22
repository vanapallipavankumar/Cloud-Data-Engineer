use mani;
/* DDL Commands: Data Definition Language*/

/* Create, Alter, Drop, Truncate*/

/* Create Query: The CREATE TABLE statement is used to create a table in SQL. 
We know that a table comprises of rows and columns. So while creating tables 
we have to provide all the information to SQL about the names of the columns, 
type of data to be stored in columns, size of the data etc*/

CREATE TABLE Stud
(
ROLL_NO int(3),
NAME varchar(20),
SUBJECT varchar(20));

select * from stud;

/* Inser Query: Insert is a widely-used command in the Structured Query Language (SQL) data manipulation language (DML)
 used by SQL Server and Oracle relational databases. The insert command is used for inserting one or more rows into a database
 table with specified table column values.*/
 
 
insert into stud values(101,'Vasu','Physics'),
						(102,'Kiran','Chemistry'),
                        (103,'Srinu','Mathematics'),
                        (104,'Pavan','English'),
                        (105,'Kalyan','Science'),
                        (106,'Raviteja','Social');
                        
   /* Alter: In Table Statement used for add,delete or modify columns in an existing table*/ 
   
   /* Add: Adding the new column to the exsting table */
   Alter table stud add fee int;
   select * from stud;
/* drop: you dont want the particular column that time you can use the drop column*/
alter table stud drop SUBJECT;

/* modify: you can modify the datatype of the column in exsting table*/

alter table stud modify fee long;

/* you can see the description of the table*/
desc stud;
 
  /* update: The update commend using for the update the values in the exsiting table*/
 
update student set qualification='M.Tech'
where std_id=101;

update student set qualification='B.Tech',qualification='MBA'
where std_id in (102,104);

update student set qualification='M.com',qualification='B.com'
where std_name in ('Mani','kumar');

update student set qualification='MCA',qualification='M.sc'
where std_address in ('Hyderbad','Nidadavole');