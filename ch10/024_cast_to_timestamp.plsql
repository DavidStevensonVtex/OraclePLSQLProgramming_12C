DECLARE
   tstz     timestamp WITH TIME ZONE;
   string   VARCHAR2 (40);
   tsltz    timestamp WITH LOCAL TIME ZONE;
BEGIN
   -- convert string to datetime
   tstz :=
      CAST (
         '24-Feb-2009 09.00.00.00 PM US/Eastern' AS timestamp WITH TIME ZONE
      );
   -- convert datetime back to string
   string := CAST (tstz AS varchar2);
   tsltz :=
      CAST ('24-Feb-2009 09.00.00.00 PM' AS timestamp WITH LOCAL TIME ZONE);

   DBMS_OUTPUT.put_line (tstz);
   DBMS_OUTPUT.put_line (string);
   DBMS_OUTPUT.put_line (tsltz);
END;
/