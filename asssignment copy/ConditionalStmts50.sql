-- Conditional Statements 10
-- Use CASE to print different messages based on an employee's job role.

DECLARE
   v_job_role VARCHAR2(50) := 'Manager'; -- example job role
   v_message VARCHAR2(100);
BEGIN
   v_message := CASE v_job_role
                  WHEN 'Manager' THEN 'Responsible for managing team.'
                  WHEN 'Developer' THEN 'Works on software development.'
                  WHEN 'Analyst' THEN 'Analyzes business requirements.'
                  ELSE 'Job role not recognized.'
                END;
   DBMS_OUTPUT.PUT_LINE(v_message);
END;
