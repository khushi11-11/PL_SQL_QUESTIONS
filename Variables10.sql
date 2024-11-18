-- Variables 10
-- Declare a variable that holds the result of a SELECT query fetching an employee’s name from the employees table.

DECLARE
   v_emp_name employees.first_name%TYPE;
BEGIN
   SELECT first_name INTO v_emp_name FROM employees WHERE employee_id = 100;
END;
