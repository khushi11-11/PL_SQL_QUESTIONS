-- Loops 05
-- Create a nested loop where the outer loop iterates over departments and the inner loop over employees.

DECLARE
   TYPE dept_array IS TABLE OF VARCHAR2(50) INDEX BY PLS_INTEGER;
   v_depts dept_array := dept_array(1 => 'HR', 2 => 'Finance', 3 => 'IT');
   TYPE emp_array IS TABLE OF VARCHAR2(50) INDEX BY PLS_INTEGER;
   v_employees emp_array := emp_array(1 => 'Khushi', 2 => 'Aastha', 3 => 'Anshita');
BEGIN
   FOR i IN 1..v_depts.COUNT LOOP
      DBMS_OUTPUT.PUT_LINE('Department: ' || v_depts(i));
      FOR j IN 1..v_employees.COUNT LOOP
         DBMS_OUTPUT.PUT_LINE('  Employee: ' || v_employees(j));
      END LOOP;
   END LOOP;
END;
