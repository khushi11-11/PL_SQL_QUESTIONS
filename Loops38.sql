-- Loops 08
-- Write a PL/SQL block using a FOR loop to iterate over records in a cursor.

DECLARE
   CURSOR emp_cursor IS SELECT first_name, salary FROM Employee;
   v_emp emp_cursor%ROWTYPE;
BEGIN
   FOR v_emp IN emp_cursor LOOP
      DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp.first_name || ', Salary: ' || v_emp.salary);
   END LOOP;
END;
