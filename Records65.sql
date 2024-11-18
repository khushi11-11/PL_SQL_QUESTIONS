-- Record 05
-- Create a record type that matches the structure of the departments table and assign values to it.

DECLARE
  TYPE dept_record_type IS RECORD (
    d_id NUMBER,
    d_name VARCHAR2(100),
    e_count NUMBER
  );

  dept_record dept_record_type;

BEGIN
  dept_record.d_id := 1106;
  dept_record.d_name := 'Design';
  dept_record.e_count := 12;

  DBMS_OUTPUT.PUT_LINE('Department ID: ' || dept_record.d_id);
  DBMS_OUTPUT.PUT_LINE('Department Name: ' || dept_record.d_name);
  DBMS_OUTPUT.PUT_LINE('Employee Count: ' || dept_record.e_count);
END;
/
COMMIT;
SELECT * FROM DEPARTMENT;