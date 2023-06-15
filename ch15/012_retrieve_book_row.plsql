DECLARE
   l_book   books%ROWTYPE;
BEGIN
    SELECT *
    INTO l_book
    FROM books
    WHERE isbn = '1-56592-335-9';

    DBMS_OUTPUT.PUT_LINE(l_book.isbn || ' ' || l_book.title || ' ' || l_book.author || ' ' || l_book.date_published || ' page count: ' || l_book.page_count);
END;
/