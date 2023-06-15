DECLARE
   dts1   INTERVAL DAY TO SECOND := '2 3:4:5.6';
   dts2   INTERVAL YEAR TO MONTH := '2-10';
   dts3   NUMBER := 3;
BEGIN
   --Show some interval multiplication
   DBMS_OUTPUT.put_line (dts1 * 2);
   DBMS_OUTPUT.put_line (dts2 * 2);
   DBMS_OUTPUT.put_line (dts3 * 2);

   --Show some interval division
   DBMS_OUTPUT.put_line (dts1 / 2);
   DBMS_OUTPUT.put_line (dts2 / 2);
   DBMS_OUTPUT.put_line (dts3 / 2);
END;
/