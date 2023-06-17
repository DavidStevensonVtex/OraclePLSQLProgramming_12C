DECLARE
   cur     PLS_INTEGER := DBMS_SQL.open_cursor;
   cols    DBMS_SQL.desc_tab;
   ncols   PLS_INTEGER;
BEGIN
   -- Parse the query.
   DBMS_SQL.parse (cur
                 , 'SELECT hire_date, salary FROM employees'
                 , DBMS_SQL.native
                  );
   -- Retrieve column information
   DBMS_SQL.describe_columns (cur, ncols, cols);

   -- Display each of the column names
   FOR colind IN 1 .. ncols
   LOOP
      DBMS_OUTPUT.put_line (cols (colind).col_name);
   END LOOP;

   DBMS_SQL.close_cursor (cur);
END;
/