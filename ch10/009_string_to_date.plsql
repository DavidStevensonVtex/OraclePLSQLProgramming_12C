DECLARE
   birthdate   DATE;
BEGIN
   birthdate := '15-Nov-1961' ;
   DBMS_OUTPUT.PUT_LINE(birthdate);
   birthdate := TO_DATE ('15-Nov-1961', 'dd-mon-yyyy');
   DBMS_OUTPUT.PUT_LINE(birthdate);
 END;
/