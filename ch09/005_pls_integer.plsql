DECLARE
   int1   PLS_INTEGER;
   int2   PLS_INTEGER;
   int3   PLS_INTEGER;
   nbr    NUMBER;
BEGIN
   int1 := 100;
   int2 := 49;
   int3 := int2 / int1;
   nbr := int2 / int1;
   DBMS_OUTPUT.put_line ('integer 100/49 = ' || TO_CHAR (int3));
   DBMS_OUTPUT.put_line ('number  100/49 = ' || TO_CHAR (nbr));
   int2 := 50;
   int3 := int2 / int1;
   nbr := int2 / int1;
   DBMS_OUTPUT.put_line ('integer 50/100 = ' || TO_CHAR (int3) || ' (rounded up?)');
   DBMS_OUTPUT.put_line ('number  50/100 = ' || TO_CHAR (nbr));

   int1 := 0.5 ;
   DBMS_OUTPUT.put_line ('int1 := 0.5; int1 = ' || TO_CHAR (int1));
END;
/