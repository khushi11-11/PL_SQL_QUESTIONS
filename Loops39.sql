-- Loops 09
-- Create a FOR loop to print employee names and their salaries from the employees table.

DECLARE
   CURSOR emp_cursor IS SELECT first_name, salary FROM employees;
BEGIN
   FOR v_emp IN emp_cursor LOOP
      DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp.first_name || ', Salary: ' || v_emp.salary);
   END LOOP;
END;
