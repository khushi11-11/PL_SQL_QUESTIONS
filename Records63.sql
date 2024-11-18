-- Record 03
-- Use %ROWTYPE to declare a record for a row in the employees table and fetch data into it.

DECLARE
  -- declaring a record variable of %ROWTYPE for the employees table
  emp_record Employee%ROWTYPE;

BEGIN
  SELECT * 
  INTO emp_record
  FROM Employee
  WHERE emp_id = 101;
  
  DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.emp_id);
  DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_record.emp_name);
  DBMS_OUTPUT.PUT_LINE('Job: ' || emp_record.job_title);
  DBMS_OUTPUT.PUT_LINE('Salary: ' || emp_record.emp_salary);
  DBMS_OUTPUT.PUT_LINE('City: ' || emp_record.city);
  DBMS_OUTPUT.PUT_LINE('Department ID: ' || emp_record.dept_id);
END;
/

-- SELECT * FROM Employee;