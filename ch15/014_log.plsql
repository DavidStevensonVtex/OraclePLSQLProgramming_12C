DROP TABLE logtab
/

CREATE TABLE logtab (
    code INTEGER,
    text VARCHAR2(4000),
    created_on DATE,
    created_by VARCHAR2(100),
    changed_on DATE,
    changed_by VARCHAR2(100)
    )
/    

CREATE OR REPLACE PACKAGE log_pkg
IS
   PROCEDURE putline (
      code_in IN INTEGER,
      text_in IN VARCHAR2
      );
      
   PROCEDURE saveline (
      code_in IN INTEGER,
      text_in IN VARCHAR2
      );

END log_pkg;
/

CREATE OR REPLACE PACKAGE BODY log_pkg
IS
   PROCEDURE putline (
      code_in IN INTEGER,
      text_in IN VARCHAR2
      )
   IS
   BEGIN
      INSERT INTO logtab
           VALUES (
              code_in,
              text_in,
              SYSDATE,
              USER,
              SYSDATE,
              USER
           );
   END;
   
   PROCEDURE saveline (
      code_in IN INTEGER,
      text_in IN VARCHAR2
      )
   IS
      PRAGMA AUTONOMOUS_TRANSACTION;
   BEGIN
      putline (code_in, text_in);
      COMMIT;
   EXCEPTION WHEN OTHERS THEN ROLLBACK;
   END;
END log_pkg;
/


/*======================================================================
| Supplement to the third edition of Oracle PL/SQL Programming by Steven
| Feuerstein with Bill Pribyl, Copyright (c) 1997-2002 O'Reilly &
| Associates, Inc. To submit corrections or find more code samples visit
| http://www.oreilly.com/catalog/oraclep3/
*/
