DECLARE
   an_interval   INTERVAL DAY TO SECOND;
BEGIN
   an_interval := NUMTODSINTERVAL (1440, 'Minute');
   DBMS_OUTPUT.put_line (an_interval);
END;
/