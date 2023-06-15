DECLARE
   y2ma   INTERVAL YEAR TO MONTH;
   y2mb   INTERVAL YEAR TO MONTH;
   d2sa   INTERVAL DAY TO SECOND;
   d2sb   INTERVAL DAY TO SECOND;
BEGIN
   /* Some YEAR TO MONTH examples */
   y2ma := INTERVAL '40-3' YEAR TO MONTH;
   y2mb := INTERVAL '40' YEAR;

   /* Some DAY TO SECOND examples */
   d2sa := INTERVAL '10 1:02:10.123' DAY TO SECOND;

   /* Fails in Oracle9i through 11gR2 because of a bug */
   --d2sb := INTERVAL '1:02' HOUR TO MINUTE;

   /* Following are two workarounds for defining intervals,
      such as HOUR TO MINUTE, that represent only a portion of the
      DAY TO SECOND range. */
   SELECT INTERVAL '1:02' HOUR TO MINUTE
     INTO d2sb
     FROM DUAL;

   d2sb := INTERVAL '1' HOUR + INTERVAL '02' MINUTE;
END;
/