CREATE OR REPLACE PROCEDURE execDDL (ddl_string IN VARCHAR2)
   AUTHID CURRENT_USER IS
BEGIN
   EXECUTE IMMEDIATE ddl_string;
EXCEPTION
   WHEN OTHERS
   THEN
      -- Display or otherwise log the error and in particular
	  -- show what the SQL string that is causing the problem.
      -- DBMS_OUTPUT.PUT_LINE ('Dynamic SQL Failure: ' || SQLERRM);
      DBMS_OUTPUT.PUT_LINE ('Dynamic SQL Failure: ' || DBMS_UTILITY.FORMAT_ERROR_STACK);
      DBMS_OUTPUT.PUT_LINE (
         '   on statement: "' || ddl_string || '"');
     
	  -- Re-raise the exception to indicate there is a problem
	  RAISE;
END;
/

