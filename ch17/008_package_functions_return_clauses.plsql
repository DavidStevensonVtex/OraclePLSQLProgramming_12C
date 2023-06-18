CREATE OR REPLACE PACKAGE book_info
IS
   TYPE overdue_rt IS RECORD (isbn books.isbn%TYPE, days_overdue PLS_INTEGER);

   TYPE overdue_rct IS REF CURSOR
      RETURN overdue_rt;

   FUNCTION overdue_info (username_in IN lib_users.username%TYPE)
      RETURN overdue_rct;

   FUNCTION onerow (isbn_in IN books.isbn%TYPE)
      RETURN books%ROWTYPE;
END;
/