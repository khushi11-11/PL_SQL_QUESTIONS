-- Loops 10
-- Use a LOOP with the CONTINUE statement to skip over certain employees based on a condition.

DECLARE
   CURSOR emp_cursor IS SELECT first_name, salary FROM employees;
BEGIN
   FOR v_emp IN emp_cursor LOOP
      IF v_emp.salary < 3000 THEN
         CONTINUE; -- skip this iteration
      END IF;
      DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp.first_name || ', Salary: ' || v_emp.salary);
   END LOOP;
END;
