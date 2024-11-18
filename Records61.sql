-- Records 01
-- Declare a record type for an employee with fields for employee ID, name, and salary.

DECLARE
  -- defining record type
  TYPE emp_record_type IS RECORD (
    e_id    NUMBER,        
    e_name  VARCHAR2(100), 
    e_sal NUMBER   
  );

  -- declaring a variable of the record type
  emp_record emp_record_type;
BEGIN
  -- Assign values to the record fields
  emp_record.e_id := 201;
  emp_record.e_name := 'John Doe';
  emp_record.e_sal := 50000;

  -- Display the values
  DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.e_id);
  DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_record.e_name);
  DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_record.e_sal);
END;
/
