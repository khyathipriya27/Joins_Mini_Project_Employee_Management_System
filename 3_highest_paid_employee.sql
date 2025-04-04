/* Identify the highest paid employee in each department. */

SELECT 
    d.department_name,
    e.name AS employee_name,
    s.salary
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
JOIN 
    salaries s ON e.employee_id = s.employee_id
WHERE 
    s.salary = (
        SELECT 
            MAX(s2.salary)
        FROM 
            employees e2
        JOIN 
            salaries s2 ON e2.employee_id = s2.employee_id
        WHERE 
            e2.department_id = e.department_id
    );
