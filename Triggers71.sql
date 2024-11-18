-- Trigger 01
-- Write a BEFORE INSERT trigger to log new employee data into an audit table.

CREATE OR REPLACE TRIGGER trigger01_insert_employee
BEFORE INSERT ON Employee
FOR EACH ROW
BEGIN
  -- inserting new employee data into the audit table
  INSERT INTO auditEmployee (
    e_id,
    e_name,
    hire_date,
    action_date,
    action_type
  )
  VALUES ( -- vals taken from the dataset entered into Employee table
    :NEW.emp_id,
    :NEW.emp_name,
    :NEW.hire_date,
    SYSDATE, -- action date
    'INSERT' -- action type
  );
END;
/

SELECT * FROM Employee;
SELECT * FROM auditEmployee;


-- ERROR :-
-- CREATE OR REPLACE TRIGGER trigger01_insert_employee
-- *
-- ERROR at line 1:
-- ORA-04089: cannot create triggers on objects owned by SYS
-- REASON :-
-- If the Employee table was created by you but the error ORA-04089: cannot create triggers on objects owned by SYS still occurs, it likely means:
-- You are connected as the SYS user or working under the SYS schema.
-- Even though you created the Employee table, its ownership might default to the SYS schema.


INSERT
  INTO Employee (emp_id, emp_name, job_title, emp_salary, hire_date, age, city, bonus, dept_id) 
  VALUES (205, 'Aastha Sharma', 'Developer', 80000, TO_DATE('2021-04-15', 'YYYY-MM-DD'), 22, 'Indore', 5000, 1101);
SELECT * FROM dual;
COMMIT;