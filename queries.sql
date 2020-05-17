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

-- 8) select contact firstname, contact lastname and creditlimit for all customers where credit limit > 50000
SELECT CONTACTFIRSTNAME, CONTACTLASTNAME, CREDITLIMIT from customers where CREDITLIMIT > 50000;

-- 9) select customers who do not have a credit limit
select * from customers where CREDITLIMIT = 0;

-- 10) list all offices not in the usa
SELECT * from OFFICES WHERE COUNTRY != 'USA';

-- 11) list orders made between june 16, 2014 and july 7, 2014 
SELECT * from ORDERS where ORDERDATE between '06/16/2014' and '07/07/2014';

-- 12) list products that we need to reorder
SELECT * from products where QUANTITYINSTOCK < 1000;