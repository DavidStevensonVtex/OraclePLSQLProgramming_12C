DECLARE
   CURSOR happiness_cur
   IS
      SELECT simple_delights
        FROM happiness;
BEGIN
   OPEN happiness_cur;

   IF happiness_cur%ISOPEN
   THEN
      DBMS_OUTPUT.PUT_LINE('cursor is open');
   END IF;
EXCEPTION
   WHEN OTHERS
   THEN
      IF happiness_cur%ISOPEN
      THEN
        DBMS_OUTPUT.PUT_LINE('exception handler: cursor is open - closing cursor');
         CLOSE happiness_cur;
      END IF;
END;
/