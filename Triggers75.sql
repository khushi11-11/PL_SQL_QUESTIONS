-- Trigger 05
-- Write a BEFORE UPDATE trigger to validate that an employee’s salary cannot be reduced.

CREATE OR REPLACE TRIGGER prevent_salary_reduction
BEFORE UPDATE OF emp_salary ON Employee
FOR EACH ROW
BEGIN
  IF :NEW.emp_salary < :OLD.emp_salary THEN
    RAISE_APPLICATION_ERROR(-20002, 'Salary cannot be reduced.');
  END IF;
END;
/
