INSERT ALL
    INTO Department (dept_id, dept_name, emp_count) 
    VALUES (1101, 'IT', 30)
    INTO Department (dept_id, dept_name, emp_count) 
    VALUES (1102, 'Finance', 5)
    INTO Department (dept_id, dept_name, emp_count) 
    VALUES (1103, 'HR', 7)
    INTO Department (dept_id, dept_name, emp_count) 
    VALUES (1104, 'Sales', 2)
    INTO Department (dept_id, dept_name, emp_count) 
    VALUES (1105, 'Marketing', 6)

SELECT * FROM dual;
COMMIT;

SELECT * FROM Department;