CREATE OR REPLACE PROCEDURE change_author_name (
   old_name_in      IN     books.author%TYPE
 , new_name_in      IN     books.author%TYPE
 , rename_count_out    OUT PLS_INTEGER
)
IS
BEGIN
   UPDATE books
      SET author = new_name_in
    WHERE author = old_name_in;

   rename_count_out := sql%ROWCOUNT;
--    DBMS_OUTPUT.PUT_LINE('row count: ' || rename_count_out);
END;
/