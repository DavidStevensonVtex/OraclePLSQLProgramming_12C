DECLARE
   end_of_may2008   timestamp;
   next_month       timestamp;
BEGIN
   end_of_may2008 := TO_TIMESTAMP ('31-May-2008', 'DD-Mon-YYYY');
   next_month := TO_TIMESTAMP (ADD_MONTHS (end_of_may2008, 1));
   DBMS_OUTPUT.put_line (next_month);
END;
/