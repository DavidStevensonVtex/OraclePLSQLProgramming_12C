DECLARE
   directions_upper        CLOB;
   directions_persistent   CLOB;
BEGIN
   SELECT UPPER (falls_directions), falls_directions
     INTO directions_upper, directions_persistent
     FROM waterfalls
    WHERE falls_name = 'Munising Falls';
END;
/