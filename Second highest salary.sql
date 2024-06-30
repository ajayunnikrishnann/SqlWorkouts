SELECT MAX(Salary) AS SecondHighestSalary FROM EmployeeDetails
WHERE Salary < (SELECT MAX(Salary) FROM EmployeeDetails);


SELECT Salary
FROM (
  SELECT Salary, RANK() OVER (ORDER BY Salary DESC) AS rank
  FROM EmployeeDetails
) sub
WHERE rank = 2;

