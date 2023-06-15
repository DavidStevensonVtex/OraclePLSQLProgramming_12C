CREATE OR REPLACE PROCEDURE explain_joke (
   main_category_in IN joke_category.category_id%TYPE
)
IS
   /*
   || Cursor with parameter list consisting of a single
   || string parameter.
   */
   CURSOR joke_cur (category_in VARCHAR2)
   IS
      SELECT name, category, last_used_date
        FROM joke
       WHERE category = UPPER (category_in);

   joke_rec   joke_cur%ROWTYPE;
BEGIN
   /* Now when I open the cursor, I also pass the argument */
   OPEN joke_cur (main_category_in);

   FETCH joke_cur
   INTO joke_rec;

   DBMS_OUTPUT.PUT_LINE('name: ' || joke_rec.name || ' category: ' || joke_rec.category || ' last_used_date: ' || joke_rec.last_used_date);

   CLOSE joke_cur ;
END;
/