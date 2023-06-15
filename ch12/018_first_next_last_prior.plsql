CREATE OR REPLACE FUNCTION compute_sum (the_list IN list_t)
   RETURN NUMBER
AS
   row_index   PLS_INTEGER := the_list.FIRST;
   total       NUMBER := 0;
BEGIN
   LOOP
      EXIT WHEN row_index IS NULL;
      total := total + the_list (row_index);
      row_index := the_list.NEXT (row_index);
   END LOOP;

   RETURN total;
END compute_sum;
/

CREATE OR REPLACE FUNCTION compute_sum (the_list IN list_t)
   RETURN NUMBER
AS
   row_index   PLS_INTEGER := the_list.LAST;
   total       NUMBER := 0;
BEGIN
   LOOP
      EXIT WHEN row_index IS NULL;
      total := total + the_list (row_index);
      row_index := the_list.PRIOR (row_index);
   END LOOP;

   RETURN total;
END compute_sum;
/