DECLARE
   TYPE author_title_rt IS RECORD (
      author   books.author%TYPE
    , title    books.title%TYPE
   );

   l_book_info   author_title_rt;
BEGIN
   SELECT author, title
     INTO l_book_info
     FROM books
    WHERE isbn = '0-596-00977-1';

    DBMS_OUTPUT.PUT_LINE('Title: ' || l_book_info.title || ' Author: ' || l_book_info.author);
END;
/