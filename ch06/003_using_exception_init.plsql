CREATE OR REPLACE PROCEDURE delete_company (company_id_in IN NUMBER)
IS
   /* Declare the exception. */
   still_have_employees exception;

   /* Associate the exception name with an error number. */
   PRAGMA EXCEPTION_INIT (still_have_employees, -2292);
BEGIN
   /* Try to delete the company. */
   DELETE FROM company
         WHERE company_id = company_id_in;
EXCEPTION
   /* If child records were found, this exception is raised! */
   WHEN still_have_employees
   THEN
      DBMS_OUTPUT.put_line ('Please delete employees for company first.');
END;
/