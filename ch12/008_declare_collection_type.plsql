DECLARE
   TYPE birthdates_aat IS VARRAY (10) OF DATE;

   l_dates   birthdates_aat := birthdates_aat ();
BEGIN
   l_dates.EXTEND (1);
   l_dates (1) := SYSDATE;

   DECLARE
      FUNCTION earliest_birthdate (list_in IN birthdates_aat)
         RETURN DATE
      IS
      BEGIN
         RETURN SYSDATE;
      END earliest_birthdate;
   BEGIN
      DBMS_OUTPUT.put_line (earliest_birthdate (l_dates));
   END;
END;
/