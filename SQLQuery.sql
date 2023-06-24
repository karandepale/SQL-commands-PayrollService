--UC1-> Creating payrollService Database;
create database payroll_service;
use payroll_service;

--UC2-Create table employee_payroll  [for UC2]--
create table employee_payroll(ID int identity(1,1) primary key,name varchar(20),Salary float,StartDate date);


-- Inserting new records in the existing table  [for UC3]
insert into employee_payroll values('Karan',35000,'2020-02-20'),('Krishna',38000,'2020-03-19');


--Retriving data from table [for uc4]
select * from employee_payroll;


--View Data [for UC-5] 
select Salary from employee_payroll where name='Karan';
select * from employee_payroll where startDate between cast('2020-02-20' as date) and getdate();


