CREATE OR REPLACE PROCEDURE check_account (company_id_in IN NUMBER)
IS
   overdue_balance exception;
BEGIN
   LOOP
      IF TRUE
      THEN
         RAISE overdue_balance;
      END IF;
   END LOOP;
EXCEPTION
   WHEN overdue_balance
   THEN
      DBMS_OUTPUT.put_line ('Overdue!');
END;
/