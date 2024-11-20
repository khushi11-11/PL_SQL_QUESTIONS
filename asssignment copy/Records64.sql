-- Record 04
-- Write a PL/SQL block to retrieve an employee's data into a record and update their salary.

DECLARE
  emp_record Employee%ROWTYPE;

BEGIN
  SELECT * 
  INTO emp_record
  FROM Employee
  WHERE emp_id = 101; 
  
  -- Updation in record
  emp_record.emp_salary := emp_record.emp_salary + 5000;

  -- Updating the Employee table with the new salary
  UPDATE Employee
  SET emp_salary = emp_record.emp_salary
  WHERE emp_id = emp_record.emp_id;

  DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.emp_id);
  DBMS_OUTPUT.PUT_LINE('Updated Salary: ' || emp_record.emp_salary);
END;
/
