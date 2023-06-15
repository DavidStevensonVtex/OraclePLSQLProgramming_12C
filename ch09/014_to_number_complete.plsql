DECLARE
   a   NUMBER;
BEGIN
   a :=
      TO_NUMBER (
         'F123.456,78'
       , 'L999G999D99'
       ,    'NLS_NUMERIC_CHARACTERS='',.'''
         || ' NLS_CURRENCY=''F'''
         || ' NLS_ISO_CURRENCY=FRANCE'
      );
      DBMS_OUTPUT.PUT_LINE(a);
END;
/