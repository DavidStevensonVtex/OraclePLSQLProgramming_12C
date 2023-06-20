CREATE OR REPLACE PROCEDURE process_employee ( employee_id_in IN employees.employee_id%TYPE )
IS
   l_fullname VARCHAR2(100);
BEGIN
   SELECT last_name || ',' || first_name
     INTO l_fullname
     FROM employees
    WHERE employee_id = employee_id_in;

    DBMS_OUTPUT.PUT_LINE(l_fullname);
END;
/ 