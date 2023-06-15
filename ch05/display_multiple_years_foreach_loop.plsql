CREATE OR REPLACE PROCEDURE display_multiple_years (
   start_year_in IN PLS_INTEGER
 , end_year_in   IN PLS_INTEGER
)
IS
BEGIN
   FOR sales_rec IN (
      SELECT *
        FROM sales_data
       WHERE year BETWEEN start_year_in AND end_year_in)
   LOOP
      display_total_sales (sales_rec.year);
   END LOOP;
END display_multiple_years;
/