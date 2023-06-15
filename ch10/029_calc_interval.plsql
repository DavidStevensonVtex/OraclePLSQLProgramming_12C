DECLARE
   leave_on_trip      timestamp := TIMESTAMP '2005-03-22 06:11:00.00';
   return_from_trip   timestamp := TIMESTAMP '2005-03-25 15:50:00.00';
   trip_length        INTERVAL DAY TO SECOND;
BEGIN
   trip_length := return_from_trip - leave_on_trip;

   DBMS_OUTPUT.put_line (
      'Length in days hours:minutes:seconds is ' || trip_length
   );
END;
/
BEGIN
   DBMS_OUTPUT.put_line((TO_DATE ('25-Mar-2005 3:50 pm'
                               , 'dd-Mon-yyyy hh:mi am'
                                )
                        - TO_DATE ('22-Mar-2005 6:11 am'
                                 , 'dd-Mon-yyyy hh:mi am'
                                  )) || ' days');
END;
/