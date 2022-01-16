# Question-1: How many orders were shipped by Speedy Express in total?
# Using left join to join both Orders and Shippers tables

SELECT * 
FROM Orders as o
LEFT JOIN Shippers as s
ON o.ShipperID = s.ShipperID
WHERE ShipperName = "Speedy Express"



# Question -2: What is the last name of the employee with the most orders?
# Used limit to select the highest number of orders. 
# Used COUNT(DISTINCT order_ID) to count the orders per employee 

SELECT e.LastName, COUNT(DISTINCT o.OrderID) as count_orders
FROM Employees as e
LEFT JOIN Orders as o
ON e.EmployeeID = o.EmployeeID
GROUP BY e.LastName
ORDER BY count_orders DESC
LIMIT 1


# Question -3: What product was ordered the most by customers in Germany?
# Join products table with OrderDetails table with Orders table with customers table
# Then using where clause filter country germany and order by quantity_orders

SELECT p.ProductName, SUM(od.Quantity) as quantity_orders
FROM Products as p
LEFT JOIN OrderDetails as od
ON p.ProductID = od.ProductID
LEFT JOIN Orders as o
ON od.OrderID = o.OrderID
LEFT JOIN Customers as c
ON o.CustomerID = c.CustomerID
WHERE c.Country = "Germany"
GROUP BY p.ProductName
ORDER BY quantity_orders DESC
LIMIT 1




