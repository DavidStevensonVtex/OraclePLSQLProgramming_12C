CREATE OR REPLACE PROCEDURE remove_books (date_in               IN      DATE
                                        , removal_count_out     OUT     PLS_INTEGER
                                         )
IS
BEGIN
   DELETE FROM books
         WHERE date_published < date_in;

   removal_count_out := sql%ROWCOUNT;
END;
/