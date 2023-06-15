DECLARE
   dt1   DATE;
   dt2   DATE;
   d2s   INTERVAL DAY (3) TO SECOND (0);
BEGIN
   dt1 := TO_DATE ('15-Nov-1961 12:01 am', 'dd-Mon-yyyy hh:mi am');
   dt2 := TO_DATE ('18-Jun-1961 11:59 pm', 'dd-Mon-yyyy hh:mi am');

   d2s := CAST (dt1 AS timestamp) - CAST (dt2 AS timestamp);

   DBMS_OUTPUT.put_line (d2s);
END;
/

DECLARE
   dt     DATE;
   ts     timestamp;
   d2s1   INTERVAL DAY (3) TO SECOND (0);
   d2s2   INTERVAL DAY (3) TO SECOND (0);
BEGIN
   dt := TO_DATE ('15-Nov-1961 12:01 am', 'dd-Mon-yyyy hh:mi am');
   ts := TO_TIMESTAMP ('18-Jun-1961 11:59 pm', 'dd-Mon-yyyy hh:mi am');

   d2s1 := dt - ts;
   d2s2 := ts - dt;

   DBMS_OUTPUT.put_line (d2s1);
   DBMS_OUTPUT.put_line (d2s2);
END;
/