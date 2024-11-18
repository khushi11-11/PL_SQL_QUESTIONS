-- Arrays 04
-- Write a PL/SQL block that initializes a VARRAY with a maximum size of 5 and stores employee departments.

DECLARE
   TYPE dept_array IS VARRAY(5) OF VARCHAR2(50);
   v_depts dept_array := dept_array('HR', 'Finance', 'IT');
BEGIN
   FOR i IN 1 .. dept_array.COUNT LOOP
      DBMS_OUTPUT.PUT_LINE('Department Name: ' || dept_array(i));
   END LOOP;
END;
