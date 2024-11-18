-- Arrays 01
-- Declare and initialize an associative array to store employee names using INDEX BY PLS_INTEGER.

DECLARE
   TYPE name_array IS TABLE OF VARCHAR2(100) INDEX BY PLS_INTEGER;
   v_names name_array;
BEGIN
   v_names(1) := 'Khushi';
   v_names(2) := 'Aastha';
   v_names(3) := 'Anshita';
END;
