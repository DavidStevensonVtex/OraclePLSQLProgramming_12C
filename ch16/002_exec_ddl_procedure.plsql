CREATE OR REPLACE PROCEDURE exec_ddl (ddl_string IN VARCHAR2)
IS
BEGIN
   EXECUTE IMMEDIATE ddl_string;
END;
/