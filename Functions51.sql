-- Functions 01
-- Write a function that takes an employee ID as input and returns the employee’s name.

CREATE OR REPLACE FUNCTION get_employee_name(e_id IN NUMBER) RETURN VARCHAR2 IS
  e_name VARCHAR2(100);
BEGIN
  SELECT emp_name INTO e_name FROM Employee WHERE emp_id = e_id;
  RETURN e_name;
END;
/ 

---------EXAMPLE------------

DECLARE
  e_name VARCHAR2(100);
BEGIN
  e_name := get_employee_name(101);
  DBMS_OUTPUT.PUT_LINE('Employee Name: ' || e_name);
END;
/