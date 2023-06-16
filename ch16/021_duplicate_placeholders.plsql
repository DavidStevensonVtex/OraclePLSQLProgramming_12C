CREATE OR REPLACE PROCEDURE updnumval (col_in   IN VARCHAR2
                                     , start_in IN DATE
                                     , end_in   IN DATE
                                     , val_in   IN NUMBER
                                      )
IS
   dml_str VARCHAR2 (32767)
         :=    'UPDATE emp SET '
            || col_in
            || ' = :val 
        WHERE hiredate BETWEEN :lodate AND :hidate 
        AND :val IS NOT NULL';
BEGIN
   EXECUTE IMMEDIATE dml_str USING val_in, start_in, end_in, val_in;
END;
/