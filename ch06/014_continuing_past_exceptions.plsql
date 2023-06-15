CREATE OR REPLACE PROCEDURE change_data
IS
BEGIN
   BEGIN
      DELETE FROM employees
            WHERE employee_id = 198;
   EXCEPTION
      WHEN OTHERS
      THEN
         log_error;
   END;

   BEGIN
      UPDATE company
         SET company_id = 1;
   EXCEPTION
      WHEN OTHERS
      THEN
         log_error;
   END;

   BEGIN
      INSERT INTO company_history
         SELECT *
           FROM company
          WHERE company_id = 1;
   EXCEPTION
      WHEN OTHERS
      THEN
         log_error;
   END;
END;
/