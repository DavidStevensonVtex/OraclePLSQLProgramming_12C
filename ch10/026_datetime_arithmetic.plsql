DECLARE
   CURRENT_DATE   timestamp;
   result_date    timestamp;
BEGIN
   CURRENT_DATE := SYSTIMESTAMP;
   result_date := CURRENT_DATE + INTERVAL '1500 4:30:2' DAY TO SECOND;
   DBMS_OUTPUT.put_line (result_date);
END;
/