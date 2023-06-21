CREATE OR REPLACE TRIGGER validate_employee_changes
   AFTER INSERT OR UPDATE
   ON employees
   FOR EACH ROW
DECLARE
   PROCEDURE check_date (date_in IN DATE)
   IS
   BEGIN
      DBMS_OUTPUT.PUT_LINE('validate_employee_changes: check_date: ' || TO_CHAR(date_in, 'DD-MON-YYYY'));
   END;

   PROCEDURE check_email (email_in IN VARCHAR2)
   IS
   BEGIN
      DBMS_OUTPUT.PUT_LINE('validate_employee_changes: check_email: ' || email_in );
   END;
BEGIN
   check_date (:new.hire_date);
   check_email (:new.email);
END;
/

UPDATE employees SET hire_date = SYSDATE - 12000, email = 'dstevenson@gmail.com' WHERE employee_id = 108 ;
ROLLBACK ;