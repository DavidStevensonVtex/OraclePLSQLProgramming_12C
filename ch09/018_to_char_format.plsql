DECLARE
   b   VARCHAR2 (30);
BEGIN
   b := TO_CHAR (123.4567, '99.99');
   DBMS_OUTPUT.put_line (b);
--    '######'
END;
/