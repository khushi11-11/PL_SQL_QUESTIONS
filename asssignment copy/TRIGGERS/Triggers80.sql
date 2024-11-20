-- Trigger 10
-- Write an AFTER UPDATE trigger to send a notification whenever an employee’s job title is changed.

CREATE OR REPLACE TRIGGER notify_job_title_change
AFTER UPDATE OF job_title ON Employee
FOR EACH ROW
BEGIN
  DBMS_OUTPUT.PUT_LINE('Employee ' || :OLD.emp_id || ' job title changed from ' || :OLD.job_title || ' to ' || :NEW.job_title);
END;
/
