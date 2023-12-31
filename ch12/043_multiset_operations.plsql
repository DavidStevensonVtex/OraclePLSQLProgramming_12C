CREATE OR REPLACE TYPE strings_nt IS TABLE OF VARCHAR2(100);
/

CREATE OR REPLACE PACKAGE authors_pkg
IS
   steven_authors    strings_nt
      := strings_nt ('ROBIN HOBB'
                   , 'ROBERT HARRIS'
                   , 'DAVID BRIN'
                   , 'SHERI S. TEPPER'
                   , 'CHRISTOPHER ALEXANDER'
                    );
   veva_authors   strings_nt
      := strings_nt ('ROBIN HOBB'
                   , 'SHERI S. TEPPER'
                   , 'ANNE MCCAFFREY'
                   );

   eli_authors   strings_nt
      := strings_nt ( 'SHERI S. TEPPER'
                    , 'DAVID BRIN'
                    );
   
   PROCEDURE show_authors (
      title_in   IN   VARCHAR2
    , authors_in    IN   strings_nt
   );
END;
/
SHO ERR

CREATE OR REPLACE PACKAGE BODY authors_pkg
IS
   PROCEDURE show_authors (
      title_in   IN   VARCHAR2
    , authors_in    IN   strings_nt
   )
   IS
   BEGIN
      DBMS_OUTPUT.put_line (title_in);

      FOR indx IN authors_in.FIRST .. authors_in.LAST
      LOOP
         DBMS_OUTPUT.put_line (indx || ' = ' || authors_in (indx));
      END LOOP;

      DBMS_OUTPUT.put_line ('_');
   END show_authors;
END;
/
SHO ERR
//
