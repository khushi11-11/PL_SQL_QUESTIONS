-- Trigger 02
-- Create a BEFORE UPDATE trigger to update a timestamp whenever an employee's salary is changed.

CREATE OR REPLACE TRIGGER update_salary_timestamp
BEFORE UPDATE OF emp_salary ON Employee
FOR EACH ROW
BEGIN
  :NEW.last_updated := SYSDATE;
END;
/


-- last_updated jesa koi column hi ni h




-- ERROR SAMAJH NI AAYA
-- Trigger UPDATE_SALARY_TIMESTAMP compiled
-- LINE/COL  ERROR
-- --------- -------------------------------------------------------------
-- 2/3       PLS-00049: bad bind variable 'NEW.LAST_UPDATED'
-- Errors: check compiler log