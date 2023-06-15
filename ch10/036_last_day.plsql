DECLARE
   ts   timestamp WITH TIME ZONE;
BEGIN
   ts := SYSTIMESTAMP;

   --Notice that ts now specifies fractional seconds
   --AND a time zone.
   DBMS_OUTPUT.put_line (ts);

   --Modify ts using one of the built-in date functions.
   ts := LAST_DAY (ts);

   --We've now LOST our fractional seconds, and the
   --time zone has changed to our session time zone.
   DBMS_OUTPUT.put_line (ts);
END;
/