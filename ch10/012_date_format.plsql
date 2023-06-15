DECLARE
   dt DATE;
BEGIN
   dt := SYSDATE ;
   DBMS_OUTPUT.put_line (TO_CHAR (dt, 'YYYY-MM-DD HH:MI:SS.FF6 AM TZH:TZM'));
-- ORA-01821: date format not recognized
-- ORA-06512: at line 5
-- Format elements that are valid with TIMESTAMP types are not valid for the DATE type.
-- Invalid format elements: FF, TZH, TZM
END;
/