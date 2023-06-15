DECLARE
   b   VARCHAR2 (30);
   c   VARCHAR2 (30);
BEGIN
   b := TO_CHAR (123.01, 'LB000G000G009D99');
   DBMS_OUTPUT.put_line (b);
   -- '          $000,000,123.01'

   c := TO_CHAR (0, 'LB000G000G009D99');
   DBMS_OUTPUT.put_line (c);
   -- blank output
END;
/
