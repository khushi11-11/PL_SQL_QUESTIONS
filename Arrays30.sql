-- Arrays 10
-- Write a PL/SQL block to add a new element to a VARRAY and print all its elements.

DECLARE
   TYPE dept_array IS VARRAY(5) OF VARCHAR2(50);
   v_depts dept_array := dept_array('HR', 'Finance', 'IT', 'Sales', 'Marketing');
   new_dept VARCHAR2(50) := 'R&D';
BEGIN
   -- VARRAY can only hold a fixed number of elements. Adding a new element would require creating a new array.
   -- Example: creating a new array with the new department
   DECLARE
      TYPE new_dept_array IS VARRAY(6) OF VARCHAR2(50);
      v_new_depts new_dept_array := new_dept_array('HR', 'Finance', 'IT', 'Sales', 'Marketing', new_dept);
   BEGIN
      FOR i IN 1..v_new_depts.COUNT LOOP
         DBMS_OUTPUT.PUT_LINE(v_new_depts(i));
      END LOOP;
   END;
END;
