CREATE OR REPLACE PROCEDURE display_multiple_years (
   start_year_in IN PLS_INTEGER
 , end_year_in   IN PLS_INTEGER
)
IS
BEGIN
   FOR l_current_year IN start_year_in .. end_year_in
   LOOP
      display_total_sales (l_current_year);
   END LOOP;
END display_multiple_years;
/