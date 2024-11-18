-- Trigger 04
-- Create an AFTER INSERT trigger to send a welcome message to new employees.

CREATE OR REPLACE TRIGGER welcome_new_employee
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
  DBMS_OUTPUT.PUT_LINE('Welcome ' || :NEW.emp_name || ' to the company!');
END;
/


