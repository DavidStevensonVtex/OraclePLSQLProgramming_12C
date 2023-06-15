DECLARE
   l_isbn    books.isbn%TYPE := '0-596-00121-5';
   l_title   books.title%TYPE;
BEGIN
   SELECT title
     INTO l_title
     FROM books
    WHERE isbn = l_isbn;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      DBMS_OUTPUT.put_line ('Unknown book: ' || l_isbn);
   WHEN TOO_MANY_ROWS
   THEN
      /* This package defined in errpkg.pkg */
      errpkg.record_and_stop ('Data integrity error for: ' || l_isbn);
      RAISE;
END;
/