DECLARE
   a   NUMBER;
BEGIN
   a := TO_NUMBER ('$123,456.78', 'L999G999D99');
   a := TO_NUMBER ('$123,456.78', 'L999G999G999D99');
   a := TO_NUMBER ('$1234,567,890.78', 'L9999G999G999D99');
   a := TO_NUMBER ('$234,567,890.789', 'L999G999G999D999');
   a := TO_NUMBER ('001,234', '000G000');
   a := TO_NUMBER ('<123.45>', '999D99PR');
--    a := TO_NUMBER ('cxxiii', 'rn');      RN is output only
--    DBMS_OUTPUT.PUT_LINE('Roman numeral: ' || a);
--    EEEE is another output only format.
   a := TO_NUMBER ('1.23456E-24');
END;
/