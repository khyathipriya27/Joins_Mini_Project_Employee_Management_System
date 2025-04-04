/* Employees who joined in the last 6 months */

SELECT 
    employee_id,
    name,
    designation,
    joining_date
FROM 
    employees
WHERE 
    joining_date >= CURDATE() - INTERVAL 6 MONTH;
