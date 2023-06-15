DECLARE
   dt      DATE;
   ts      timestamp;
   tstz    timestamp WITH TIME ZONE;
   tsltz   timestamp WITH LOCAL TIME ZONE;
BEGIN
   dt := TO_DATE ('12/26/2005', 'mm/dd/yyyy');
   ts := TO_TIMESTAMP ('24-Feb-2002 09.00.00.50 PM');
   tstz :=
      TO_TIMESTAMP_TZ ('06/2/2002 09:00:00.50 PM EST'
                     , 'mm/dd/yyyy hh:mi:ssxff AM TZD'
                      );
   tsltz :=
      TO_TIMESTAMP_TZ ('06/2/2002 09:00:00.50 PM EST'
                     , 'mm/dd/yyyy hh:mi:ssxff AM TZD'
                      );
   DBMS_OUTPUT.put_line (dt);
   DBMS_OUTPUT.put_line (ts);
   DBMS_OUTPUT.put_line (tstz);
   DBMS_OUTPUT.put_line (tsltz);
END;
/