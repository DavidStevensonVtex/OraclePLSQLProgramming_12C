CREATE OR REPLACE PROCEDURE display_multiple_years (
   start_year_in IN PLS_INTEGER
 , end_year_in   IN PLS_INTEGER
)
IS
   l_current_year   PLS_INTEGER := start_year_in;
BEGIN
   LOOP
      EXIT WHEN l_current_year > end_year_in;
      display_total_sales (l_current_year);
      l_current_year := l_current_year + 1;
   END LOOP;
END display_multiple_years;
/