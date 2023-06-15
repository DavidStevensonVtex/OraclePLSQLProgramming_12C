DECLARE
    CURSOR book_cur IS
        SELECT author, title
        FROM book
        WHERE isbn = '1-56592-335-9' ;
    l_book book_cur%ROWTYPE ;
BEGIN
    OPEN book_cur ;
    FETCH book_cur INTO l_book ;
END ;
/