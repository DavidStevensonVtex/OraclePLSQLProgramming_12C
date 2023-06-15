DECLARE
    first_book      summer.reading_list_rt := summer.must_read ;
    second_book     summer.reading_list_rt := summer.wifes_favorite ;
BEGIN
    IF first_book = second_book     /* This is not supported! */
    THEN
        DBMS_OUTPUT.PUT_LINE('first and second books are the same');
    END IF ;
END ;
/
