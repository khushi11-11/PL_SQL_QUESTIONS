-- Record 02
-- Write a PL/SQL block to assign values to an employee record and print the values.

DECLARE
-- defining the record type
  TYPE emp_record_type IS RECORD (
    e_id    NUMBER,       
    e_name  VARCHAR2(100),
    e_sal NUMBER      
  );

  -- declaring a variable of the record type
  emp_record emp_record_type;
BEGIN
  -- assigning values to the record fields
  emp_record.e_id := 202;
  emp_record.e_name := 'Khushi Verma';
  emp_record.e_sal := 89000;

  DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.e_id);
  DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_record.e_name);
  DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_record.e_sal);
END;
/
