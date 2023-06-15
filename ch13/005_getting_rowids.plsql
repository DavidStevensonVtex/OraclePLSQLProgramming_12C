BEGIN
   DELETE FROM employees
         WHERE employee_id = 99999;

   INSERT INTO employees (
                             employee_id
                           , last_name
                           , first_name
                           , email
                           , hire_date
                           , job_id
              )
       VALUES (99999, 'Grubbs', 'John', 'GRUBBS', SYSDATE, 'AD_VP'
              );

   COMMIT;
END;
/

DECLARE
   employee_rowid    UROWID;
   employee_salary   NUMBER;
BEGIN
   --Retrieve employee information that we might want to modify
   -- Use of ROWIDs in the fashion is not recommended!
   -- Do not rely on underlying physical data that could change without your knowledge!
      SELECT ROWID, salary
      INTO employee_rowid, employee_salary
      FROM employees
      WHERE last_name = 'Grubbs' AND first_name = 'John';

      UPDATE employees 
      SET salary = 45678.90 
      WHERE ROWID = employee_rowid ;

      SELECT ROWID, salary
      INTO employee_rowid, employee_salary
      FROM employees
      WHERE ROWID = employee_rowid ;

    DBMS_OUTPUT.PUT_LINE('John Grubbs rowid: ' || employee_rowid || 
         '  salary: $' || TRIM(TO_CHAR(employee_salary, '999G999G999D99')));
END;
/