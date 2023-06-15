DECLARE
   department_total   NUMBER;
BEGIN
   SELECT SUM (salary)
     INTO department_total
     FROM employees
    WHERE department_id = 50;

    DBMS_OUTPUT.PUT_LINE('department 50: salary total: $' || TRIM(TO_CHAR(department_total, '999G999D99')));
END;
/