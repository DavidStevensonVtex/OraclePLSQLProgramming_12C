CREATE OR REPLACE FUNCTION book_title (isbn_in IN books.isbn%TYPE)
   RETURN books.title%TYPE
IS
   return_value   books.title%TYPE;
BEGIN
   SELECT title
     INTO return_value
     FROM books
    WHERE isbn = isbn_in;

   RETURN return_value;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      RETURN NULL;
   WHEN TOO_MANY_ROWS
   THEN
      errpkg.record_and_stop ('Data integrity error for: ' || isbn_in);
      RAISE;
END;
/