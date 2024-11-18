-- Record 06
-- Write a PL/SQL block that loops through a cursor and stores each row in a record.

DECLARE
  CURSOR emp_cursor IS
    SELECT emp_id, emp_name, emp_salary
    FROM Employee;

  -- declaring a record of %ROWTYPE to hold each row
  emp_record emp_cursor%ROWTYPE;

BEGIN
  OPEN emp_cursor;
  
  LOOP
    FETCH emp_cursor INTO emp_record; 
    EXIT WHEN emp_cursor%NOTFOUND; 
    
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.emp_id);
    DBMS_OUTPUT.PUT_LINE('Name: ' || emp_record.emp_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || emp_record.emp_salary);
    DBMS_OUTPUT.PUT_LINE('------------------------');
    -- DBMS_OUTPUT.PUT_LINE('City: ' || emp_record.city);
  END LOOP;

  CLOSE emp_cursor;
END;
/
