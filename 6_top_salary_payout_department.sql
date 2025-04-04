/* Department with the highest total salary payout */ 

SELECT 
    d.department_name,
    SUM(s.salary) AS total_salary
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
JOIN 
    salaries s ON e.employee_id = s.employee_id
GROUP BY 
    d.department_name
ORDER BY 
    total_salary DESC
LIMIT 1;
