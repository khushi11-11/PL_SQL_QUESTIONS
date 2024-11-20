-- Conditional Statements 01
-- Use a CASE statement to check the department and assign a different manager for each department.

DECLARE
   v_department VARCHAR2(50) := 'IT';
   v_manager VARCHAR2(50);
BEGIN
   v_manager := CASE v_department
                  WHEN 'HR' THEN 'Shruti'
                  WHEN 'Finance' THEN 'Arjun'
                  WHEN 'IT' THEN 'Priya'
                  ELSE 'Not Assigned'
                END;
   DBMS_OUTPUT.PUT_LINE('Manager for ' || v_department || ': ' || v_manager);
END;
