CREATE OR REPLACE PROCEDURE make_adjustment (NAME_IN IN VARCHAR2)
IS
BEGIN
   NULL;
END;
/

DECLARE
   c_delimiter   CONSTANT CHAR (1) := '^';

   TYPE strings_t IS TABLE OF employees%ROWTYPE
                        INDEX BY employees.email%TYPE;

   TYPE ids_t IS TABLE OF employees%ROWTYPE
                    INDEX BY PLS_INTEGER;

   by_name       strings_t;
   by_email      strings_t;
   by_id         ids_t;

   ceo_name employees.last_name%TYPE
         := 'Hall' || c_delimiter || 'Peter';

   PROCEDURE load_arrays
   IS
   BEGIN
      /* Load up all three arrays from rows in table. */
      FOR rec IN (SELECT *
                    FROM employees)
      LOOP
         DBMS_OUTPUT.PUT_LINE(rec.last_name || ' ' || rec.first_name || ' ' || rec.email || ' ' || rec.employee_id );
         by_name (rec.last_name || c_delimiter || rec.first_name) := rec;
         by_email (rec.email) := rec;
         by_id (rec.employee_id) := rec;
      END LOOP;
   EXCEPTION
        WHEN NO_DATA_FOUND THEN NULL ;
   END;
BEGIN
--    DBMS_OUTPUT.PUT_LINE('arrays loading started') ;
   load_arrays;
--    DBMS_OUTPUT.PUT_LINE('arrays loaded') ;

   /* Now I can retrieve information by name or by ID. */

--    DBMS_OUTPUT.PUT_LINE(by_name (ceo_name).salary);
   IF by_name (ceo_name).salary > by_id (150).salary
   THEN
      make_adjustment (ceo_name);
   END IF;
END;
/