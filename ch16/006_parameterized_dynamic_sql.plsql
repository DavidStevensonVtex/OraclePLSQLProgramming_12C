CREATE OR REPLACE FUNCTION updnval (col IN VARCHAR2
                                  , val IN NUMBER
                                  , start_in IN DATE
                                  , end_in IN DATE
                                   )
   RETURN PLS_INTEGER
IS
BEGIN
   EXECUTE IMMEDIATE 'UPDATE employees SET ' || col
                    || ' = :the_value 
        WHERE hire_date BETWEEN :lo AND :hi'
      USING val, start_in, end_in;

   RETURN sql%ROWCOUNT;
END;
/