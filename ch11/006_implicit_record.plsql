BEGIN
    FOR book_rec IN ( SELECT * FROM books )
    LOOP
        DBMS_OUTPUT.PUT_LINE('Author: ' || book_rec.author || '  Title: ' || book_rec.title || '  ISBN: ' || book_rec.isbn) ;
    END LOOP ;
END ;
/