DECLARE
   y2m   INTERVAL YEAR TO MONTH;
BEGIN
   y2m := INTERVAL '40-3' YEAR TO MONTH;

   DBMS_OUTPUT.put_line (TO_CHAR (y2m, 'YY "Years" and MM "Months"'));
END;
/

DECLARE
   y2m   INTERVAL YEAR TO MONTH;
BEGIN
   y2m := INTERVAL '40-3' YEAR TO MONTH;

   DBMS_OUTPUT.put_line(   EXTRACT (YEAR FROM y2m)
                        || ' Years and '
                        || EXTRACT (MONTH FROM y2m)
                        || ' Months');
END;
/