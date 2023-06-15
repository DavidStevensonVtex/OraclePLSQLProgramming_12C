CREATE OR REPLACE PROCEDURE set_book_info (book_in IN books%ROWTYPE)
IS
BEGIN
   INSERT INTO books
       VALUES book_in;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      UPDATE books
         SET row = book_in
       WHERE isbn = book_in.isbn;
END;
/