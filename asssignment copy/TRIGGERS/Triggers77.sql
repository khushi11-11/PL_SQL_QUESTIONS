-- Trigger 07
-- Write a BEFORE INSERT trigger to ensure that no employee is inserted without a valid department.

CREATE OR REPLACE TRIGGER validate_department_before_insert
BEFORE INSERT ON Employee
FOR EACH ROW
BEGIN
  IF :NEW.dept_id IS NULL THEN
    RAISE_APPLICATION_ERROR(-20003, 'Department ID is required.');
  END IF;
END;
/
