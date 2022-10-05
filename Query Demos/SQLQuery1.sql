-- sum, min, max, count, avg
-- use 'is' when dealing with null values

--1.	Select the average Mark from all the Marks in the registration table
select avg(mark) from Registration

--2.	Select how many students are there in the Student Table
select count(*) from Student

--3.	Select the average payment amount for payment type 5
select avg(amount)'Type5Average' from payment
where PaymentTypeID = 5

--4. Select the highest payment amount
select max(amount) from payment

--5.	 Select the lowest payment amount
select min(amount) from payment

--6. Select the total of all the payments that have been made
select sum(amount) from payment

--7. How many different payment types does the school accept?
select count(distinct paymenttypeid) from payment

--8. How many students are in club 'CSS'?
select count(clubid) from Activity
where clubid = 'CSS'
