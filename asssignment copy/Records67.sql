-- Record 07
-- Use a record to hold data from two different columns of the employees table and print them.

DECLARE
  -- defining a record type for specific columns
  TYPE emp_record_type IS RECORD (
    e_id  NUMBER,
    e_name VARCHAR2(100)
  );

  -- variable of the record type
  emp_record emp_partial_record_type;

BEGIN
  -- Fetch data into the record from the employees table
  SELECT emp_id, emp_name
  INTO emp_record.e_id, emp_record.e_name
  FROM Employee
  WHERE emp_id = 111;
  
  DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.e_id);
  DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_record.e_name);
END;
/
