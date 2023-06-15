CREATE OR REPLACE PACKAGE bookinfo_pkg
IS
   CURSOR bard_cur
   IS
      SELECT title, date_published
        FROM books
       WHERE UPPER (author) LIKE 'SHAKESPEARE%';
END bookinfo_pkg;
/

DECLARE
   bard_rec   bookinfo_pkg.bard_cur%ROWTYPE;
BEGIN
   /* Check to see if the cursor is already opened.
      This may be the case as it is a packaged cursor.
      If so, first close it and then re-open it to
      ensure a "fresh" result set.
   */
   IF bookinfo_pkg.bard_cur%ISOPEN
   THEN
      CLOSE bookinfo_pkg.bard_cur;
   END IF;

   OPEN bookinfo_pkg.bard_cur;

   -- Fetch each row, but stop when I've displayed the
   -- first five works by Shakespeare or when I have
   -- run out of rows.
   LOOP
      FETCH bookinfo_pkg.bard_cur
      INTO bard_rec;

      EXIT WHEN bookinfo_pkg.bard_cur%NOTFOUND
                OR bookinfo_pkg.bard_cur%ROWCOUNT > 5;
      DBMS_OUTPUT.put_line(   bookinfo_pkg.bard_cur%ROWCOUNT
                           || ') '
                           || bard_rec.title
                           || ', published in '
                           || TO_CHAR (bard_rec.date_published, 'YYYY'));
   END LOOP;

   CLOSE bookinfo_pkg.bard_cur;
END bookinfo_pkg;
/
