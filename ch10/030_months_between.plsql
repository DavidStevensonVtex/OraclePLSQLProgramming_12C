BEGIN
   --Calculate two ends of month, the first earlier than the second:
   DBMS_OUTPUT.put_line (MONTHS_BETWEEN ('31-JAN-1994', '28-FEB-1994'));

   --Calculate two ends of month, the first later than the second:
   DBMS_OUTPUT.put_line (MONTHS_BETWEEN ('31-MAR-1995', '28-FEB-1994'));

   --Calculate when both dates fall in the same month:
   DBMS_OUTPUT.put_line (MONTHS_BETWEEN ('28-FEB-1994', '15-FEB-1994'));

   --Perform months_between calculations with a fractional component:
   DBMS_OUTPUT.put_line (MONTHS_BETWEEN ('31-JAN-1994', '1-MAR-1994'));
   DBMS_OUTPUT.put_line (MONTHS_BETWEEN ('31-JAN-1994', '2-MAR-1994'));
   DBMS_OUTPUT.put_line (MONTHS_BETWEEN ('31-JAN-1994', '10-MAR-1994'));
END;
/