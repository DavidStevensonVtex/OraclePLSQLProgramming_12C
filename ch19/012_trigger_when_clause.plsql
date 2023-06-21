-- The WHEN clause can be used only with row-level triggers.
-- You will get a compilation error (ORA-04077) if you try to use it with statement-level triggers.
CREATE OR REPLACE TRIGGER check_raise
   AFTER UPDATE OF salary
   ON employees
   FOR EACH ROW
   WHEN (   (old.salary != new.salary)
         OR (old.salary IS NULL AND new.salary IS NOT NULL)
         OR (old.salary IS NOT NULL AND new.salary IS NULL))
BEGIN
   DBMS_OUTPUT.PUT_LINE ( 'ID: ' || TO_CHAR(:old.employee_id) || 
        ' Name: ' || :old.first_name || ' ' || :old.last_name || 
        ' Old Salary: ' || TO_CHAR(:old.salary, '999G999D99') || 
        ' New Salary: ' || TO_CHAR(:new.salary, '999G999D99') );
END;
/

UPDATE employees SET SALARY = SALARY + 1000 WHERE employee_id = 100 ;
ROLLBACK ;