DECLARE
   directions   CLOB;
BEGIN
   SELECT UPPER (falls_directions)
     INTO directions
     FROM waterfalls
    WHERE falls_name = 'Munising Falls';

    DBMS_OUTPUT.PUT_LINE('UPPER(falls_directions): ' || directions);
END;
/