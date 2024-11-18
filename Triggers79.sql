-- Trigger 09
-- Create a BEFORE UPDATE trigger that prevents changes to a manager’s salary.

CREATE OR REPLACE TRIGGER prevent_manager_salary_change
BEFORE UPDATE OF emp_salary ON Employee
FOR EACH ROW
BEGIN
  IF :OLD.job_title = 'Manager' THEN
    RAISE_APPLICATION_ERROR(-20004, 'Cannot change salary of a manager.');
  END IF;
END;
/
