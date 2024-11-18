-- Arrays 06
-- Create an associative array to store employee IDs and names, and demonstrate how to delete an element.

DECLARE
   TYPE emp_array IS TABLE OF VARCHAR2(100) INDEX BY NUMBER;
   v_emp_names emp_array;
BEGIN
   v_emp_names(101) := 'Khushi';
   v_emp_names(102) := 'Aastha';
   v_emp_names.DELETE(102);
END;
