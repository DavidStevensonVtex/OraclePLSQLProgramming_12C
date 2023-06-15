DECLARE
   b   VARCHAR2 (30);
BEGIN
   b := TO_CHAR (123456789.01, 'L999G999G999D99');
   DBMS_OUTPUT.put_line (b);
--    '          $123,456,789.01'
END;
/