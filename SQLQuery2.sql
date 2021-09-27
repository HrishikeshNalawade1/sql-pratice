create database school;
use school;
create table Teachers(
 t_id int primary key,
 t_name varchar(100) not null,
 t_address varchar(100)not null,
 subject varchar(15),
 Gender Varchar(10)
);
select subject From Teachers;
select *from Teachers;


insert into Teachers values(1,'Hrishikesh','Kolhapur','c#','Male');
insert into Teachers values(2,'Hrishikesh','Kolhapur','c','Male');
insert into Teachers values(3,'Rehan','Kolhapur','chemisrty','Male');
insert into Teachers values(7,'Rujuta','Pune','History','female',25000);
insert into Teachers values(8,'Ben','Pune','History','female',25000);
alter table Teachers Add Gender varchar(10);


UPDATE Teachers
SET  Salary= 30000
WHERE t_id = 7; 


Alter Table Teachers 
ADD  Salary int ;

CREATE  VIEW Female
AS
select t_id,t_name,t_address
FROM Teachers
WHERE Gender='Female';
drop view Female;

select *from Female

Select *from Female where t_id=5;

create trigger Teach1 
 on 
Teachers 
After Delete
 AS
begin
   print'you Cannot Delete from Table'
   rollback
End



drop trigger Teach2

Delete From Teachers where t_id=2;

Begin try
Begin Transaction
 update Teachers set Salary=63000 where Gender='Male'
 update Teachers set Salary=3000/0 where Gender='Female'
 Commit Transaction
 Print 'Transaction Completed'
 End Try
 Begin Catch
 rollback Transaction
 print 'Transaction Rollback'
 End Catch

 Begin try
Begin Transaction
 update Teachers set Salary=63000 where Gender='Male'
 update Teachers set Salary=30000 where Gender='Female'
 Commit Transaction
 Print 'Transaction Completed'
 End Try
 Begin Catch
 rollback Transaction
 print 'Transaction Rollback'
 End Catch