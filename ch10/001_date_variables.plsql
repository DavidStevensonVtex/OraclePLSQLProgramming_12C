DECLARE
   hire_date     timestamp (0) WITH TIME ZONE;
   todays_date   CONSTANT DATE := SYSDATE;
   pay_date      timestamp DEFAULT TO_TIMESTAMP ('20050204', 'YYYYMMDD');
BEGIN
   NULL;
END;
/