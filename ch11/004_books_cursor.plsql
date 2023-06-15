DECLARE
   CURSOR my_books_cur
   IS
      SELECT *
        FROM books
       WHERE author LIKE '%Feuerstein%';

   one_sf_book   my_books_cur%ROWTYPE;
BEGIN
    FOR book IN my_books_cur
    LOOP
        DBMS_OUTPUT.PUT_LINE('Title: ' || book.title || ' ISBN: ' || book.isbn);
    END LOOP ;
   NULL;
END;
/