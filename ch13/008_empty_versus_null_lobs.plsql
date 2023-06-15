DECLARE
   directions   CLOB;
BEGIN
   IF directions IS NULL
   THEN
      DBMS_OUTPUT.put_line ('directions is NULL');
   ELSE
      DBMS_OUTPUT.put_line ('directions is not NULL');
   END IF;
END;
/