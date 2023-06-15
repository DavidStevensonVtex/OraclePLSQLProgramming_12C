CREATE OR REPLACE PROCEDURE add_company (id_in      IN company.id%TYPE
                                       , NAME_IN    IN company.name%TYPE
                                       , type_id_in IN company.type_id%TYPE
                                        )
IS
BEGIN
   INSERT INTO company (id, name, type_id
                       )
       VALUES (id_in, NAME_IN, type_id_in
              );
EXCEPTION
   WHEN OTHERS
   THEN
      /*
      || Anonymous block inside the exception handler lets me declare
      || local variables to hold the error code information.
      */
      DECLARE
         l_errcode   PLS_INTEGER := SQLCODE;
      BEGIN
         CASE l_errcode
            WHEN -1
            THEN
               -- Duplicate value for unique index. Either a repeat of the
               -- primary key or name. Display problem and re-raise.
               DBMS_OUTPUT.put_line('Company ID or name already in use. ID = '
                                    || TO_CHAR (id_in)
                                    || ' name = '
                                    || NAME_IN);
               RAISE;
            WHEN -2291
            THEN
               -- Parent key not found for type. Display problem and re-raise.
               DBMS_OUTPUT.put_line (
                  'Invalid company type ID: ' || TO_CHAR (type_id_in)
               );
               RAISE;
            ELSE
               RAISE;
         END CASE;
      END;
END add_company;
/