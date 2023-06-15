DECLARE
   dts1    INTERVAL DAY TO SECOND := '2 3:4:5.6';
   dts2    INTERVAL DAY TO SECOND := '1 1:1:1.1';

   ytm1    INTERVAL YEAR TO MONTH := '2-10';
   ytm2    INTERVAL YEAR TO MONTH := '1-1';

   days1   NUMBER := 3;
   days2   NUMBER := 1;
BEGIN
   DBMS_OUTPUT.put_line (dts1 - dts2);
   DBMS_OUTPUT.put_line (ytm1 - ytm2);
   DBMS_OUTPUT.put_line (days1 - days2);
END;
/