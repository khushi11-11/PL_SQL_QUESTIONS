-- Trigger 03
-- Write a BEFORE DELETE trigger that prevents the deletion of employees in a specific department.

CREATE OR REPLACE TRIGGER prevent_delete_specific_department
BEFORE DELETE ON Employee
FOR EACH ROW
BEGIN
  IF :OLD.dept_id = 1107 THEN 
    RAISE_APPLICATION_ERROR(-20001, 'Cannot delete employees from this department.');
  END IF;
END;
/
