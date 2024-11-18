-- Arrays 07
-- Write a PL/SQL block that inserts values into a VARRAY and retrieves the third element.

DECLARE
   TYPE dept_array IS VARRAY(5) OF VARCHAR2(50);
   v_depts dept_array := dept_array('HR', 'Finance', 'IT', 'Sales', 'Marketing');
BEGIN
   DBMS_OUTPUT.PUT_LINE(v_depts(3)); 
END;
