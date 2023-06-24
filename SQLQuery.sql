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


-- Alter and Update [for UC-6]
select * from employee_payroll;
alter table employee_payroll add Gender char(1);
update employee_payroll set Gender='M';

-- Basic operations [for UC-7]
select * from employee_payroll;
select sum(salary) as TotalSalary from employee_payroll;
select max(salary) as Maximum from employee_payroll;
select min(salary) as Minimum from employee_payroll;
select avg(salary) as AverageSalary from employee_payroll;
select count(salary) as NumOfEmployees from employee_payroll;
select count(salary) as NumberOfEmployee,Gender from employee_payroll group by Gender;



---UC8 : Ability to extend data to store information like employee phone, address and department for[UC-8]
alter table employee_payroll add Phone bigint;
select * from employee_payroll;
alter table employee_payroll add Address varchar(250);
alter table employee_payroll add Department varchar(250);

