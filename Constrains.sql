show databases;
use manikanta;
show tables;
create table student
(roll int,
sname varchar(50) not null,
grade_marks int default 0,
email varchar(50) unique,
gender char(2),
check (gender in ('M','F')),
primary key(roll));
select * from student;



desc student;
insert into student values(101,'Manikanta',78,'mani@gmail.com','M'); # it works perfectly
insert into student values(102,'Satish',88,'Satish@gmail.com','O'); # it show the error beacuse of i am given the chek constrains 'M','F'
insert into student values(101,'Mani',85,'ma@gmail','M') # It not allow the duplicates values
insert into student (roll,sname,email,gender) values(102,'Mani','ma@gmail.com','M');
insert into student (roll,grade_marks,email,gender) values(103,52,'suri@gmail.com','M'); #Eroor not accept the null values because i am mention not null constrains conditon in sname column


### creating one more table
create table grades(
roll int primary key,
grade1 int,
grade2 int,
grade3 int,
foreign key(roll) references student(roll));
desc grades;

insert into grades values(101,40,50,45); # it insert the data perfectly
insert into grades values(105,50,55,56); # it gets the error because of 105 student information not there in student table 

create table placement(
rollno int references student(roll), # it act as foreign key at column level
company varchar(20),
placement_status varchar(100),
primary key(rollno,company));

desc placement;

show tables;

select * from cust;
desc cust;

# it is the creating the  primary key with the existing table

alter table cust add primary key(firstname, lastname);
desc cust; 
alter table cust drop primary key;
desc cust;

### Select commends
select * from student;
insert into student (roll,sname,grade_marks,email,gender) values(103,'suresh',65,'suresh@gmail.com','M'),
(104,'Nagu',58,'nagu@gmail.com','F');
insert into student(roll,sname,grade_marks,gender)values(105,'Mounika',89,'F');
insert into student(roll,sname,gender)values(106,'Rajesh','M');
insert into student (roll,sname,grade_marks,email,gender) values(107,'suri',50,'suri@gmail.com','M'),
(108,'Nagaraju',52,'nag@gmail.com','M'),(109,'Srinu',45,'sri@gmail.com','F'),(110,'Durga',42,'durga@gmail.com','F');

### Operators

### you want particular sudent information in the roll 102,105
select * from student where roll in (102,105);

### display the student information in between 102 to 108
select * from student where roll between 102 and 108


### like predicate

select * from student where sname like 'M%ni%'; # it disaply the name of the M alphabet information
select * from student where sname like 'M%'; ## it display the information about M alphabet names
select * from student where email like '%.com'; # it display the .com mail infoamtion
select * from student where gender like '%F'; # it display the F related details

select * from student where sname like '_a%'; ### it dispaly the word of the 2nd letter is a related names



