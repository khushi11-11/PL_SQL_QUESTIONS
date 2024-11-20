-- Function 06
-- Create a function that returns the highest salary in the employees table.

CREATE OR REPLACE FUNCTION highest_salary RETURN NUMBER IS
  max_salary NUMBER;
BEGIN
  SELECT MAX(emp_salary) INTO max_salary FROM Employee;
  RETURN max_salary;
END;
/

---------EXAMPLE------------

DECLARE
  salary NUMBER;
BEGIN
  salary := highest_salary;
  DBMS_OUTPUT.PUT_LINE('The highest salary is: ' || salary);
END;
/