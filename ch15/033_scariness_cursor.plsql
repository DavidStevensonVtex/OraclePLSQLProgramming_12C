DECLARE
   CURSOR scariness_cur (program_name VARCHAR2)
   IS
      SELECT SUM (scary_level) total_scary_level
        FROM tales_from_the_crypt
       WHERE prog_name = program_name;
BEGIN
   program_name := 'THE BREATHING MUMMY';              /* Illegal reference */
--    *
-- ERROR at line 8:
-- ORA-06550: line 8, column 4:
-- PLS-00201: identifier 'PROGRAM_NAME' must be declared
-- ORA-06550: line 8, column 4:
-- PL/SQL: Statement ignored
-- ORA-06550: line 10, column 24:
-- PLS-00201: identifier 'PROGRAM_NAME' must be declared
-- ORA-06550: line 10, column 4:
-- PL/SQL: SQL Statement ignored

   OPEN scariness_cur (program_name);

   CLOSE scariness_cur;
END;
/