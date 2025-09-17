-- Create the Employee table
CREATE TABLE Employee (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  salary INT,
  managerId INT
);

-- Insert the values into the Employee table
INSERT INTO Employee (id, name, salary, managerId) VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);

-- select the employee 

SELECT
  e1.name AS Employee
FROM Employee AS e1
JOIN Employee AS e2
  ON e1.managerId = e2.id
WHERE
  e1.salary > e2.salary;