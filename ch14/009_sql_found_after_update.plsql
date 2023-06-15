CREATE OR REPLACE PROCEDURE change_author_name (
   old_name_in      IN     books.author%TYPE
 , new_name_in      IN     books.author%TYPE
 , changes_made_out    OUT BOOLEAN
)
IS
BEGIN
   UPDATE books
      SET author = new_name_in
    WHERE author = old_name_in;

   changes_made_out := sql%FOUND;
END;
/