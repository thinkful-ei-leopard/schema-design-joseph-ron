SELECT
    count(e.emp_name) as Num_Employees
FROM
    department d
    JOIN
    employee e
    ON
        e.department = d.id
    WHERE
        d.dept_name = 'Sales';

SELECT 
    e.emp_name as Full_Name,
    p.project_name
FROM
    employee e
    JOIN
    employee_project
    ON
        e.id = employee_project.emp_id
    JOIN
        project p
    ON 
        p.id = employee_project.project_id
    WHERE
        p.project_name = 'Plan christmas party';

-- List the names of employees from the Warehouse department that are assigned to 
-- the 'Watch paint dry' project.
SELECT
e.emp_name as Full_Name,
p.project_name,
d.dept_name
FROM
    department d
    JOIN employee e
    ON e.department = d.id
    JOIN employee_project ep
    ON e.id = ep.emp_id
    JOIN project p
    ON p.id = ep.project_id
    WHERE
        p.project_name = 'Watch paint dry' AND
        d.dept_name = 'Warehouse';

SELECT
    d.dept_name as Department,
    e.emp_name as Full_name,
    p.project_name as project_name
FROM
    department d
    JOIN employee e
    ON e.department = d.id
    JOIN employee_project ep
    ON  e.id = ep.emp_id
    JOIN project p
    ON p.id = ep.project_id
    WHERE
        d.dept_name = 'Sales';
    
SELECT
    e.emp_name,
    p.project_name
FROM
    department d
    JOIN
        employee e
    ON
        e.id = d.manager
    JOIN
        employee_project ep
    ON
        e.id = ep.emp_id
    JOIN
        project p
    ON
        p.id = ep.project_id
    WHERE
        p.project_name = 'Watch paint dry';