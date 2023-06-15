ALTER SESSION SET plsql_warnings = 'enable:all'
/

CREATE OR REPLACE PROCEDURE plw6009_demo
AS
BEGIN
   DBMS_OUTPUT.put_line ('I am here!');
   RAISE NO_DATA_FOUND;
EXCEPTION
   WHEN OTHERS
   THEN
      NULL;
-- LINE/COL ERROR
-- -------- -----------------------------------------------------------------
-- 1/1      PLW-05018: unit PLW6009_DEMO omitted optional AUTHID clause;     
--          default value DEFINER used

-- 7/9      PLW-06009: procedure "PLW6009_DEMO" OTHERS handler does not end
--          in RAISE or RAISE_APPLICATION_ERROR
END plw6009_demo;
/