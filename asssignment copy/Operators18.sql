-- Operators 08
-- Perform arithmetic calculations within a SELECT query inside a PL/SQL block.

DECLARE
   total_salary NUMBER;
BEGIN
   SELECT (salary + bonus) INTO total_salary FROM employees WHERE employee_id = 100;
END;
