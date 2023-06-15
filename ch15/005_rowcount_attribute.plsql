BEGIN
   UPDATE employees
      SET last_name = 'FEUERSTEIN';

   DBMS_OUTPUT.put_line (sql%ROWCOUNT);
END;
/