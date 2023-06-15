CREATE OR REPLACE PROCEDURE validate_emp (birthdate_in IN DATE)
IS
   min_years   CONSTANT PLS_INTEGER := 18;
BEGIN
   IF ADD_MONTHS (SYSDATE, min_years * 12 * -1) < birthdate_in
   THEN
      raise_application_error (
         errnums.en_too_young
       , 'Employee must be at least ' || min_years || ' old.'
      );
   END IF;
END;
/