/* list all employees along with their department name and salary */

SELECT 
    e.employee_id,
    e.name,
    d.department_name,
    e.designation,
    s.salary
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
JOIN 
    salaries s ON e.employee_id = s.employee_id;
