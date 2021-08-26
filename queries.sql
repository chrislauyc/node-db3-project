-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productname,categoryname FROM products as p
join categories as c on p.categoryid = c.categoryid
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select o.orderid, shippername, orderdate from orderdetails as od
join orders as o on o.orderid = od.orderid
join shippers as s on s.shipperid = o.shipperid
where orderdate < "2012-08-09"
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select productname, orderid from orderdetails as od
join products as p on p.productid = od.productid
where orderid = 10251
order by productname
limit 3
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select orderid, customername, lastname from orders as o
join customers as c on c.customerid = o.customerid
join employees as e on e.employeeid = o.employeeid
