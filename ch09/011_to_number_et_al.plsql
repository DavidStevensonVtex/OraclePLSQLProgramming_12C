DECLARE
   a    NUMBER;
   b    NUMBER;
   c    NUMBER;
   d    NUMBER;
   e    BINARY_FLOAT;
   f    BINARY_DOUBLE;
   g    BINARY_DOUBLE;

   n1   VARCHAR2 (20) := '-123456.78';
   n2   VARCHAR2 (20) := '+123456.78';
BEGIN
   a := TO_NUMBER ('123.45');
   b := TO_NUMBER (n1);
   c := TO_NUMBER (n2);
   d := TO_NUMBER ('1.25E2');
   e := TO_BINARY_FLOAT ('123.45');
   f := TO_BINARY_DOUBLE ('inf');
   g := TO_BINARY_DOUBLE ('NAN');
END;
/
