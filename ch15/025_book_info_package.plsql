CREATE OR REPLACE PACKAGE book_info
IS
   CURSOR books_cur (title_filter_in IN books.title%TYPE)
      RETURN books%ROWTYPE;
END;
/

CREATE OR REPLACE PACKAGE BODY book_info
IS
   CURSOR books_cur (title_filter_in IN books.title%TYPE)
      RETURN books%ROWTYPE
   IS
      SELECT *
        FROM books
       WHERE title LIKE title_filter_in;
END;
/