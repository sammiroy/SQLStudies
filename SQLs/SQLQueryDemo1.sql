-- Simple Queries
-- Syntax
-- Select column(s) from tablename
-- Select all the records from the staff table

Select * from staff -- '*' means all the columns
-- NEVER USE 'SELECT *'
-- Always use the columns by name, its more descriptive and SECURE
Select staffid, firstname, lastname, datehired, datereleased, positionid, loginid from staff
-- If you have red squiggles under columns/table names but they do exist and the query works, you need to refresh the intellisense (Ctrl + Shift + R)
-- Custom column names (Aliases)
select 'StaffFirstName' = firstname, 'StaffLastName' = lastname from staff
select firstname as 'StaffFirstName', lastname as 'StaffLastName' from staff
select firstname 'StaffFirstName', lastname 'StaffLastName' from staff -- 'as' is optional

-- Custom Columns
-- Can contain combinations of attributes and math
select firstname + ' ' + lastname 'FullName' from staff

-- MATH
-- Select the courseid, coursename, coursecost, sale course cost (20% off) for all the courses
select courseid, coursename, coursecost, coursecost * 0.8 'SaleCost' from course
-- how much money is made from each course if the max number of students enrolled. Show the courseid, coursename 
select courseid, coursename, coursecost * maxstudents 'maxcost' from course
-- select the student ids that registered in at least one offering
-- 'distinct' removes duplicate records
select distinct studentid from registration
-- where - which records to return
-- where uses the same conditions as check constraints
select firstname, lastname from student
where studentid = 199899200
-- select the paymentid and the amount for all the payments that are over 600
select paymentid, amount from payment
where amount > 600

-- select the fullnames (as one column) of students whose last names start with 's'
select firstname + ' ' + lastname 'FullName' from student
where firstname like 's%'

-- select the firstname of student whose studentids are 198933540, 199912010, 200688700
select firstname from student
where studentid = 198933540 OR studentid = 199912010 OR studentid = 200688700
--or
select firstname from student
where studentid IN(198933540, 199912010, 200688700)

