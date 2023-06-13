create database project;

create table credit (Gender varchar(5),	Car_Owner varchar(5),Property_Owner varchar(5),	Children int,Annual_Income int,
Type_Income varchar(30),Education varchar(30),	Marital_Status varchar(30),	Housing_Type varchar(30),Age int,Employed_Year int,
Work_Phone int,	Phone int,Email_Id	int,Type_Occupation	varchar(30),Family_Members int,	Label int);

select * from credit;

-- Group the customers bassed on their income type and find the average of their annual income

select Type_Income,avg(Annual_Income) as average_annual_income from credit group by Type_Income;

-- Find the female owners of cars and property

select * from credit where Gender='F' and Car_Owner='Y' and Property_Owner='Y';

-- Find the male customers who are staying with their family

select * from credit where gender='M' and Family_Members>0;

-- Please list the top 5 people having the highest income

select * from credit order by Annual_Income desc limit 5;

-- How many married people are having bad credit

select count(*) from credit where Marital_Status='Married' and Label=1;

-- What is the highest education level and what is the total count 

select Education,count(*) as total_count from credit group by Education order by total_count desc limit 1;

-- Between married males and females, who is having more bad credit

select gender,count(*) as total  from credit  where Marital_Status='Married' and Label=1 group by Gender order by total desc limit 1 ;

