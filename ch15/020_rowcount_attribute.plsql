CREATE OR REPLACE PROCEDURE remove_from_circulation (
   isbn_in IN books.isbn%TYPE
)
IS
BEGIN
   DELETE FROM books
         WHERE isbn = isbn_in;
END;
/

CREATE OR REPLACE PROCEDURE show_book_count
IS
   l_count   INTEGER;
BEGIN
   SELECT COUNT ( * )
     INTO l_count
     FROM books;

   -- No such book!
   remove_from_circulation ('0-000-00000-0');

   DBMS_OUTPUT.put_line (sql%ROWCOUNT);
END;
/