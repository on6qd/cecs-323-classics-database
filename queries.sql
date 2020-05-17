-- 1) List all the data in the classics models database
select * from PRODUCTLINES;

select * from PRODUCTS;

SELECT * FROM EMPLOYEES;

SELECT * from OFFICES;

SELECT * FROM CUSTOMERS;

SELECT * FROM ORDERS;

SELECT * FROM ORDERDETAILS;

SELECT * FROM PAYMENTS;

-- 2) select customer name from customer. sort by customer name
select customername from customers order by customername;

-- 3) list each of the different status that an order may be in 
SELECT distinct STATUS from ORDERS;

-- 4) list firstname and lastname for each employee. sort by lastname then firstname
select firstname, lastname from employees order by lastname, firstname;

-- 5) List all employee job titles
select distinct JOBTITLE from EMPLOYEES;

-- 6) List all products along with their product scale
SELECT PRODUCTNAME, PRODUCTSCALE from PRODUCTS;

-- 7) List all territories where we have offices 
SELECT distinct TERRITORY from OFFICES;