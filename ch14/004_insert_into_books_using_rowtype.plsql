DECLARE
   l_isbn   books.isbn%TYPE := '1-56592-335-9';
   l_book   books%ROWTYPE;
BEGIN
   INSERT INTO books (
                         book_id
                       , isbn
                       , title
                       , summary
                       , author
                       , date_published
                       , page_count
              )
       VALUES (
                  book_id_sequence.NEXTVAL
                , l_isbn
                , l_book.title
                , l_book.summary
                , l_book.author
                , l_book.date_published
                , l_book.page_count
              );
END;
/