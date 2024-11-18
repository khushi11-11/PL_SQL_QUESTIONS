-- Function 08
-- Write a PL/SQL function that accepts a department ID and returns the average salary for that department.

CREATE OR REPLACE FUNCTION get_avg_salary(d_id IN NUMBER) RETURN NUMBER IS
  avg_sal NUMBER;
BEGIN       
  SELECT AVG(emp_salary) INTO avg_sal FROM Employee WHERE dept_id = d_id;
  RETURN avg_sal;
END;
/

---------EXAMPLE------------

DECLARE
  salary NUMBER;
BEGIN
  salary := get_avg_salary(1101);
  DBMS_OUTPUT.PUT_LINE('Average salary for department 1101 (IT): ' || salary);
END;
/
