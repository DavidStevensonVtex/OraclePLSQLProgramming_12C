DECLARE
   name          CLOB;
   name_upper    CLOB;
   directions    CLOB;
   blank_space   VARCHAR2 (1) := ' ';
BEGIN
   --Retrieve a VARCHAR2 into a CLOB, apply a function to a CLOB
   SELECT falls_name, SUBSTR (falls_directions, 1, 500)
     INTO name, directions
     FROM waterfalls
    WHERE falls_name = 'Munising Falls';

   --Uppercase a CLOB
   name_upper := UPPER (name);

   -- Compare two CLOBs
   IF name = name_upper
   THEN
      DBMS_OUTPUT.put_line ('We did not need to uppercase the name.');
   END IF;

   --Concatenate a CLOB with some VARCHAR2 strings
   IF INSTR (directions, 'Mackinac Bridge') <> 0
   THEN
      DBMS_OUTPUT.put_line(   'To get to '
                           || name_upper
                           || blank_space
                           || 'you must cross the Mackinac Bridge.');
   END IF;
END;
/