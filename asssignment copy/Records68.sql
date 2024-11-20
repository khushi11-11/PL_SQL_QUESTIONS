-- Record 08
-- Write a PL/SQL block that declares a record, assigns values, and then inserts the data into a table.

DECLARE
  -- Defining a record type matching the departments table
  TYPE dept_record_type IS RECORD (
    d_id   NUMBER,
    d_name VARCHAR2(100),
    e_count     NUMBER
  );

  -- a variable of the record type
  dept_record dept_record_type;
BEGIN
  dept_record.d_id := 1107;
  dept_record.d_name := 'Research';
  dept_record.e_count := 5;
  -- already ran this example, use different values (1106, Design, 12)

  -- Insert the record into the departments table
  INSERT INTO Department (dept_id, dept_name, emp_count)
  VALUES (dept_record.d_id, dept_record.d_name, dept_record.e_count);

  DBMS_OUTPUT.PUT_LINE('Record inserted successfully.');
END;
/

-- SELECT * FROM Department;