DECLARE
   a    NUMBER := -123.45;
   a1   VARCHAR2 (30);
   b    VARCHAR2 (30) := '-123.45';
   b1   NUMBER;
   b2   BINARY_FLOAT;
   b3   BINARY_DOUBLE;
BEGIN
   a1 := CAST (a AS varchar2);
   b1 := CAST (b AS number);
   b2 := CAST (b AS binary_float);
   b3 := CAST (b AS binary_double);
   -- CAST has the disadvantage of not supporting the use of number format models.
   -- An advantage of CAST, however, is that it is part of the ISO SQL standard,
   -- whereas the TO_CHAR and TO_NUMBER functions are not.
   DBMS_OUTPUT.put_line (a1);
   DBMS_OUTPUT.put_line (b1);
   DBMS_OUTPUT.put_line (b2);
   DBMS_OUTPUT.put_line (b3);
END;
/