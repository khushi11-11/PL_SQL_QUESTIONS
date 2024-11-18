-- Functions 02
-- Create a function to calculate the total salary (basic + bonus) of an employee.

CREATE OR REPLACE FUNCTION calculate_total_salary(e_id IN NUMBER) RETURN NUMBER IS
  total_salary NUMBER;
BEGIN
  SELECT emp_salary + bonus INTO total_salary FROM Employee WHERE emp_id = e_id;
  RETURN total_salary;
END;

---------EXAMPLE------------

DECLARE
    salary NUMBER(8);
BEGIN
    salary := calculate_total_salary(125);
    DBMS_OUTPUT.PUT_LINE('Total Salary of Employee 125: ' || salary);
END;
/