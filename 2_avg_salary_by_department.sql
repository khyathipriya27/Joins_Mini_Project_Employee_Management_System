/*  find the average salary by department */

SELECT 
    d.department_name,
    ROUND(AVG(s.salary), 2) AS average_salary
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
JOIN 
    salaries s ON e.employee_id = s.employee_id
GROUP BY 
    d.department_name;
