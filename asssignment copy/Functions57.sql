-- Function 07
-- Write a function that returns the total number of employees in a specific department.

CREATE OR REPLACE FUNCTION get_employee_count(d_id IN NUMBER) RETURN NUMBER IS
  emp_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO emp_count FROM Employee WHERE dept_id = d_id;
  RETURN emp_count;
END;
/

---------EXAMPLE------------

DECLARE
  total NUMBER;
BEGIN
  total := get_employee_count(1103); -- Example department ID
  DBMS_OUTPUT.PUT_LINE('Total employees in department 1103: ' || total);
END;
/