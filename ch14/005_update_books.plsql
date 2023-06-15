CREATE OR REPLACE PROCEDURE remove_time (author_in IN VARCHAR2)
IS
BEGIN
   UPDATE books
      SET title = UPPER (title), date_published = TRUNC (date_published)
    WHERE author LIKE author_in;
END;
/