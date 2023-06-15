BEGIN
   DBMS_OUTPUT.put_line (
      TO_TIMESTAMP_TZ ('1231200 083015.50 -5:00', 'MMDDYY HHMISS.FF TZH:TZM')
   );

   DBMS_OUTPUT.put_line(TO_TIMESTAMP_TZ ('01-Nov-2009 01:30:00 EST'
                                       , 'dd-Mon-yyyy hh:mi:ss TZR'
                                        ));
   DBMS_OUTPUT.put_line(TO_TIMESTAMP_TZ ('01-Nov-2009 01:30:00.00 EST EDT'
                                       , 'dd-Mon-yyyy hh:mi:ssxff TZR TZD'
                                        ));
   DBMS_OUTPUT.put_line(TO_TIMESTAMP_TZ ('01-Nov-2009 01:30:00.00 EST EST'
                                       , 'dd-Mon-yyyy hh:mi:ssxff TZR TZD'
                                        ));
   DBMS_OUTPUT.put_line (TO_DATE ('1-1-4', 'fxDD-MM-YYYY'));
   DBMS_OUTPUT.put_line (TO_DATE ('7/16/94', 'FXMM/DD/YY'));
   DBMS_OUTPUT.put_line (
      TO_DATE ('JANUARY^1^ the year of 94', 'FXMonth-dd-"WhatIsaynotdo"yy')
   );
   DBMS_OUTPUT.put_line (TO_DATE ('07-1-94', 'FXfmDD-FXMM-FXYYYY'));
END;
/