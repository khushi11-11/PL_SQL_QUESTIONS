-- Arrays 02
-- Write a PL/SQL block to add values to an associative array and retrieve a value using its index.

DECLARE
   TYPE name_array IS TABLE OF VARCHAR2(100) INDEX BY PLS_INTEGER;
   v_names name_array;
BEGIN
   v_names(1) := 'Anshita';
   v_names(2) := 'Aastha';
   v_names(3) := 'Khushi';
   DBMS_OUTPUT.PUT_LINE(v_names(3));
END;
