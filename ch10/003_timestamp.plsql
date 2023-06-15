DECLARE
   ts1   timestamp;
   ts2   timestamp;
BEGIN
   ts1 := CAST (SYSTIMESTAMP AS timestamp);
   ts2 := SYSDATE;
   DBMS_OUTPUT.put_line (TO_CHAR (ts1, 'DD-MON-YYYY HH:MI:SS AM'));
   DBMS_OUTPUT.put_line (TO_CHAR (ts2, 'DD-MON-YYYY HH:MI:SS AM'));
END;
/