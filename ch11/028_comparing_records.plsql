DECLARE
   first_book    summer.reading_list_rt := summer.must_read;
   second_book   summer.reading_list_rt := summer.wifes_favorite;
BEGIN
   IF     first_book.favorite_author = second_book.favorite_author
      AND first_book.title = second_book.title
      AND first_book.finish_by = second_book.finish_by
   THEN
      DBMS_OUTPUT.PUT_LINE('first and second books are the same');
    ELSE
          DBMS_OUTPUT.PUT_LINE('first and second books are not the same');
   END IF;
END;
/