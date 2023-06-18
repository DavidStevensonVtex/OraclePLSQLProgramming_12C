CREATE OR REPLACE PROCEDURE astrology_reading (
   sign_in    IN VARCHAR2:= 'LIBRA'
 , born_at_in IN DATE DEFAULT SYSDATE
)
IS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Sign: ' || sign_in || '    Birth date: ' || TO_CHAR(born_at_in, 'DD-MON-YYYY'));
END;
/

BEGIN
   astrology_reading (
      'SCORPIO'
    , TO_DATE ('12-24-2009 17:56:10', 'MM-DD-YYYY HH24:MI:SS')
   );
   astrology_reading ('SCORPIO');
   astrology_reading;
   astrology_reading ();
END;
/

BEGIN
   astrology_reading (
      born_at_in => TO_DATE ('12-24-2009 17:56:10', 'MM-DD-YYYY HH24:MI:SS')
   );
END;
/