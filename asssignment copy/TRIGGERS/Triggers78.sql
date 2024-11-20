-- Trigger 08
-- Write a BEFORE INSERT trigger to automatically set an employee's hire date to the current date.

CREATE OR REPLACE TRIGGER set_hire_date
BEFORE INSERT ON Employee
FOR EACH ROW
BEGIN
  :NEW.hire_date := SYSDATE;
END;
/
