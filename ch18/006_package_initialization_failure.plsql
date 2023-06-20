CREATE OR REPLACE PACKAGE valerr
IS
   FUNCTION get RETURN VARCHAR2;
END valerr;
/
CREATE OR REPLACE PACKAGE BODY valerr
IS
   -- A package-level, but private global variable
   -- v VARCHAR2(1) := 'abc' ; -- This initialization causes the initialization failure.
   v VARCHAR2(1) ;      -- Moving the initialization to the initalization section makes locating the problem easier to solve.

   FUNCTION get RETURN VARCHAR2 
   IS
   BEGIN
      RETURN v;
   END;
BEGIN
   DBMS_OUTPUT.PUT_LINE  ('Before I show you v...');
   v := 'abc';

EXCEPTION
  WHEN OTHERS 
  THEN
    DBMS_OUTPUT.PUT_LINE  ('Trapped the error!');
	 
END valerr;
/

EXECUTE DBMS_OUTPUT.PUT_LINE('V is set to ' || NVL(valerr.get, 'NULL')) ;
/