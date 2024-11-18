-- Operators 10
-- Use comparison and logical operators to filter records from the employees table.

DECLARE
   v_emp_name employees.first_name%TYPE;
BEGIN
   SELECT first_name INTO v_emp_name 
   FROM employees 
   WHERE salary > 3000 AND department_id = 10;
END;
