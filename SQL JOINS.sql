/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT products.Name, categories.Name
 FROM products
 LEFT JOIN categories ON products.CategoryID = categories.CategoryID
 WHERE categories.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT Products.Name, Products.price, Reviews.Rating 
 FROM Products 
 JOIN Reviews ON Products.ProductID = Reviews.ProductID
 WHERE Reviews.Rating = 5;
  
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT sum(sales.Quantity) AS total, employees.FirstNAme, employees.LastName
FROM sales JOIN employees on sales.EmployeeID = employees.EmployeeID group by employees.EmployeeID
ORDER BY total DESC limit 3;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT departments.name, categories.name FROM Departments Join categories on departments.DepartmentID = categories.DepartmentID
WHERE categories.Name LIKE "Games" or categories.Name LIKE "Appliances";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.Name, Sum(s.Quantity) as 'total', Sum(s.Quantity * s.PricePerUnit) AS 'total price'
FROM products as p
JOIN sales as s on s.ProductID = p.ProductID 
WHERE p.ProductID=97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.Reviewer, r.Rating, r.Comment
FROM products as p
JOIN reviews as r ON r.ProductID =p.ProductID
WHERE p.ProductID = 857 AND r.Rating = 1;

