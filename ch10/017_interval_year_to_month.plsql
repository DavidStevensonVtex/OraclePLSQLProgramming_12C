DECLARE
   y2m   INTERVAL YEAR TO MONTH;
BEGIN
   y2m := NUMTOYMINTERVAL (10.5, 'Year');
   DBMS_OUTPUT.put_line (y2m);
END;
/