DECLARE
    onebook     book_info.bytitle_cur%ROWTYPE ;
BEGIN
    OPEN book_info.bytitle_cur ( '%PL/SQL%' ) ;

    LOOP
        FETCH book_info.bytitle_cur INTO onebook ;
        EXIT WHEN book_info.bytitle_cur%NOTFOUND ;
        book_info.display(onebook) ;
    END LOOP ;

    CLOSE book_info.bytitle_cur ;
END ;
/