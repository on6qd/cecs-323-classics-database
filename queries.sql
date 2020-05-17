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

-- 13) list all orders that shipped after the required date
select * from orders where SHIPPEDDATE > REQUIREDDATE;

-- 14) list all customers who have the word 'Mini' in their name
select * from customers where customername like '%Mini%';

-- 15) list all products supplied by 'Highway 66 Mini Classics'
select * from products where PRODUCTVENDOR = 'Highway 66 Mini Classics';

-- 16) list all products not supplied by 'Highway 66 Mini Classics'
select * from products where productvendor != 'Highway 66 Mini Classics';

-- 17) list all employees that don't have a manager 
select * from EMPLOYEES where REPORTSTO is null;

-- 18) display every order along with the details of that order for order numbers 10270, 10272, 10279
SELECT * from orders natural join ORDERDETAILS
where ORDERNUMBER in (10270, 10272, 10279);

-- 19) list of productlines and vendors that supply the products in the productline
select distinct PRODUCTLINE, PRODUCTVENDOR from PRODUCTLINES natural join PRODUCTS;

-- 20) select customers that live in the same state as one of our offices
select * from customers inner join offices on
customers."STATE" = offices."STATE";

-- 21) select customers that live in the same state as their representative
select customername from customers inner join
employees on customers.SALESREPEMPLOYEENUMBER = EMPLOYEES.EMPLOYEENUMBER
inner join offices on 
employees.OFFICECODE = offices.OFFICECODE
where customers."STATE" = OFFICES."STATE";

-- 22) select customername, orderdate, quantityordered, productline, productname for all orders made and shipped in 2015

-- 23) list products that didn't sell

-- 24) list all customers and their sales rep even if they don't have a sales rep

-- 25) find the total payments made by each customer

-- 26) find the largest payment made by a customer
select max(AMOUNT) from PAYMENTS;
-- 27) find the average payment made by a customer
select avg(AMOUNT) from PAYMENTS;
-- 28) what is the total number of products per product line
select PRODUCTLINE, count(*) as number_of_products from products group by PRODUCTLINE order by number_of_products desc;
-- 29) what is the number of orders per status
select STATUS, count(*) as orders_per_status from ORDERS group by status order by orders_per_status desc;
-- 30) list all offices and the number of employees work in each offices
select OFFICECODE, count(*) as number_of_employees from employees group by OFFICECODE order by number_of_employees desc;