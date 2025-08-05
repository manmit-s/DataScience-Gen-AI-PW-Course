Create database pw_assignment;
use pw_assignment;

-- Q1 
 Create table employees(
Emp_id int primary key not null,
Emp_name text not null,
Age int check (age > 18),
Email text unique,
Salary decimal default 30000
);

-- Q4
ALter Table employees 
add constraint uq_email unique (email);
ALTER TABLE employees
DROP CONSTRAINT UQ_email;

-- Q6
 CREATE TABLE products (
 product_id INT,
 product_name VARCHAR(50),
 price DECIMAL(10, 2));
 
 Alter Table products
 Add Primary key (product_id);
 alter table products
 alter column price set default 50.00;
 
 -- Q7
 select s.student_name, c.class_name
 from students s
 inner join classes c
 on s.class_id = c.class_id;
 
-- Q8
SELECT
    o.order_id,
    c.customer_name,
    p.product_name
FROM
    Products p
LEFT JOIN
    Orders o ON p.order_id = o.order_id
LEFT JOIN
    Customers c ON o.customer_id = c.customer_id;
    
-- Q9
SELECT
    p.product_name,
    SUM(s.amount) AS total_sales_amount
FROM
    Sales s
INNER JOIN
    Products p ON s.product_id = p.product_id
GROUP BY
    p.product_name;
    
-- Q10
SELECT
    o.order_id,
    c.customer_name,
    od.quantity
FROM
    Orders o
INNER JOIN
    Customers c ON o.customer_id = c.customer_id
INNER JOIN
    Order_Details od ON o.order_id = od.order_id;