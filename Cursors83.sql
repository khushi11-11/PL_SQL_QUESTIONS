-- Cursor 03
-- Write a PL/SQL block using a cursor to loop through employees and print their salaries.

DECLARE
    CURSOR emp_cursor IS
        SELECT emp_name, emp_salary FROM Employee;
    
    v_emp_name Employee.emp_name%TYPE;
    v_emp_salary Employee.emp_salary%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_emp_name, v_emp_salary;
        EXIT WHEN emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_emp_name);
        DBMS_OUTPUT.PUT_LINE('Salary : ' || v_emp_salary);
        DBMS_OUTPUT.PUT_LINE('-----------------------------------');
    END LOOP;
    CLOSE emp_cursor;
END;
/