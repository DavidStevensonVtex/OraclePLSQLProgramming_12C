DECLARE
   ts1   timestamp WITH TIME ZONE;
   ts2   timestamp WITH TIME ZONE;
   ts3   timestamp WITH TIME ZONE;
BEGIN
   ts1 :=
      TO_TIMESTAMP_TZ ('2002-06-18 13:52:00.123456789 -5:00'
                     , 'YYYY-MM-DD HH24:MI:SS.FF TZH:TZM'
                      );
   ts2 :=
      TO_TIMESTAMP_TZ ('2002-06-18 13:52:00.123456789 US/Eastern'
                     , 'YYYY-MM-DD HH24:MI:SS.FF TZR'
                      );
   ts3 :=
      TO_TIMESTAMP_TZ ('2002-06-18 13:52:00.123456789 US/Eastern EDT'
                     , 'YYYY-MM-DD HH24:MI:SS.FF TZR TZD'
                      );

   DBMS_OUTPUT.put_line (
      TO_CHAR (ts1, 'YYYY-MM-DD HH:MI:SS.FF AM TZH:TZM TZR TZD')
   );
   DBMS_OUTPUT.put_line (
      TO_CHAR (ts2, 'YYYY-MM-DD HH:MI:SS.FF AM TZH:TZM TZR TZD')
   );
   DBMS_OUTPUT.put_line (
      TO_CHAR (ts3, 'YYYY-MM-DD HH:MI:SS.FF AM TZH:TZM TZR TZD')
   );
END;
/