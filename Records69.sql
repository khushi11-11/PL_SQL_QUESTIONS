-- Record 09
-- Create a record type for storing student data and write a PL/SQL block to assign and print values.

DECLARE
  -- Define a record type for student data
  TYPE student_record_type IS RECORD (
    student_id   NUMBER,
    student_name VARCHAR2(100),
    course       VARCHAR2(50)
  );

  -- Declare a variable of the record type
  student_record student_record_type;

BEGIN
  -- Assign values to the record
  student_record.student_id := 2127;
  student_record.student_name := 'Khushi Verma';
  student_record.course := 'MTech IT';

  -- Print the values
  DBMS_OUTPUT.PUT_LINE('Student ID: ' || student_record.student_id);
  DBMS_OUTPUT.PUT_LINE('Student Name: ' || student_record.student_name);
  DBMS_OUTPUT.PUT_LINE('Course: ' || student_record.course);
END;
/
