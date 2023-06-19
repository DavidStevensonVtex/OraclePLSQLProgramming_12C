DECLARE
   /* First version takes a DATE parameter. */
   FUNCTION value_ok (date_in IN DATE)
      RETURN BOOLEAN
   IS
   BEGIN
      RETURN date_in <= SYSDATE;
   END;

   /* Second version takes a NUMBER parameter. */
   FUNCTION value_ok (number_in IN NUMBER)
      RETURN BOOLEAN
   IS
   BEGIN
      RETURN number_in > 0;
   END;

   /* Third version is a procedure! */
   PROCEDURE value_ok (number_in IN NUMBER)
   IS
   BEGIN
      IF number_in > 0
      THEN
         DBMS_OUTPUT.put_line (number_in || ' is OK!');
      ELSE
         DBMS_OUTPUT.put_line (number_in || ' is not OK!');
      END IF;
   END;
BEGIN
    IF value_ok ( SYSDATE ) THEN
        DBMS_OUTPUT.PUT_LINE('SYSDATE is OK');
    END IF;

    IF value_ok ( SYSDATE + 7 ) THEN
        DBMS_OUTPUT.PUT_LINE('SYSDATE is OK');
    END IF ;

    IF value_ok ( 123 ) THEN
        DBMS_OUTPUT.PUT_LINE('123 is OK');
    END IF ;

    IF value_ok ( -123 ) THEN
        DBMS_OUTPUT.PUT_LINE('-123 is OK');
    END IF ;

    value_ok ( 123 ) ;
    value_ok ( -123 ) ;
END;
/