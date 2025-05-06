Question 1:
SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';


Question 2:
Split the table into:

Orders table (OrderID, CustomerName) — Customer info depends on the whole key.

OrderItems table (OrderID, Product, Quantity) — Actual order contents.

Step 1 – Create Orders table:

sql
Copy
Edit
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;
➡️ This gives:

diff
Copy
Edit
OrderID | CustomerName
--------|--------------
101     | John Doe
102     | Jane Smith
103     | Emily Clark
Step 2 – Create OrderItems table:

sql
Copy
Edit
SELECT OrderID, Product, Quantity
FROM OrderDetails;
➡️ This retains:

arduino
Copy
Edit
OrderID | Product   | Quantity
--------|-----------|---------
101     | Laptop    | 2
101     | Mouse     | 1
102     | Tablet    | 3
102     | Keyboard  | 1
102     | Mouse     | 2
103     | Phone     | 1
