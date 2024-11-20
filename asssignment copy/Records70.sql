-- Record 10
-- Use a record to store and update multiple fields of the employees table in a single operation.

DECLARE
  -- Declare a record type for employees table
  TYPE emp_record_type IS RECORD (
    e_id  NUMBER,
    sal NUMBER,
    job_title VARCHAR2(20)
  );

  -- Declare a variable of the record type
  emp_record emp_record_type;

BEGIN
  -- Assign values to the record
  emp_record.e_id := 146;
  emp_record.sal := 85000; -- New salary
  emp_record.job_title := 'Product Manager'; -- New job ID

  -- Update the employees table using the record
  UPDATE Employee
  SET emp_salary = emp_record.sal, job_title = emp_record.job_title
  WHERE emp_id = emp_record.e_id;

  DBMS_OUTPUT.PUT_LINE('Employee updated successfully.');
END;
/
