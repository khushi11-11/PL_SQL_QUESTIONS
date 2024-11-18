-- Trigger 06
-- Create an AFTER DELETE trigger to store deleted employee records in an archive table.

CREATE OR REPLACE TRIGGER archive_deleted_employee
AFTER DELETE ON Employee
FOR EACH ROW
BEGIN
  INSERT INTO emp_archive (e_id, e_name, e_sal, d_id, deleted_date)
  VALUES (:OLD.emp_id, :OLD.emp_name, :OLD.emp_salary, :OLD.dept_id, SYSDATE);
END;
/

