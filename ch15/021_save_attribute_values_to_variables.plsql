CREATE OR REPLACE PROCEDURE show_book_count
IS
   l_count      INTEGER;
   l_numfound   PLS_INTEGER;
BEGIN
   SELECT COUNT ( * )
     INTO l_count
     FROM books;

   -- Take snapshot of attribute value:
   l_numfound := sql%ROWCOUNT;

   -- No such book!
   remove_from_circulation ('0-000-00000-0');

   -- Now I can go back to the previous attribute value.
   DBMS_OUTPUT.put_line (l_numfound);
END;
/