--UC1-> Creating payrollService Database;
create database payroll_service;
use payroll_service;

--UC2-Create table employee_payroll--
create table employee_payroll(ID int identity(1,1) primary key,name varchar(20),Salary float,StartDate date);


-- Inserting new records in the existing table
insert into employee_payroll values('Madhur',35000,'2020-02-20'),('manish',38000,'2020-03-19');
