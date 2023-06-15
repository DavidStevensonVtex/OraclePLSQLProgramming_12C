CREATE OR REPLACE PACKAGE book_info
IS
   CURSOR titles_cur
   IS
      SELECT title
        FROM books;

   CURSOR books_cur (title_filter_in IN books.title%TYPE)
      RETURN books%ROWTYPE
   IS
      SELECT *
        FROM books
       WHERE title LIKE title_filter_in;
END;
/