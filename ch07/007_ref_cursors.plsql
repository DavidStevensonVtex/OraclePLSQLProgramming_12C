DECLARE
    TYPE book_data_t IS REF CURSOR RETURN book%ROWTYPE ;
    book_curs_var book_data_t ;