DECLARE
   directions   CLOB;
BEGIN
   IF directions IS NULL
   THEN
      DBMS_OUTPUT.put_line ('at first directions is NULL');
   ELSE
      DBMS_OUTPUT.put_line ('at first directions is not NULL');
   END IF;

   DBMS_OUTPUT.put_line ('Length = ' || DBMS_LOB.getlength (directions));

   -- initialize the LOB variable
   directions := EMPTY_CLOB ();

   IF directions IS NULL
   THEN
      DBMS_OUTPUT.put_line ('after initializing, directions is NULL');
   ELSE
      DBMS_OUTPUT.put_line ('after initializing, directions is not NULL');
   END IF;

   DBMS_OUTPUT.put_line ('Length = ' || DBMS_LOB.getlength (directions));
-- at first directions is NULL
-- Length =
-- after initializing, directions is not NULL
-- Length = 0
END;
/
