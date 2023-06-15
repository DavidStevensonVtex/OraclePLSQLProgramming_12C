CREATE OR REPLACE PROCEDURE process_book (book_in IN book%ROWTYPE)
IS
BEGIN
   NULL;
END;
/
DECLARE
    l_book book%ROWTYPE ;
BEGIN
    SELECT *
    INTO l_book
    FROM book
    WHERE isbn = '1-56592-335-9' ;
    process_book(l_book) ;
EXCEPTION
    WHEN NO_DATA_FOUND
    THEN
        NULL ;
END ;
/