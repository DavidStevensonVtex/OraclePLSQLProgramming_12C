BEGIN
   INSERT INTO books ( title, isbn )
   VALUES ( 'Oracle PL/SQL Programming, 5th Edition', '0-596-00977-1'  );

   COMMIT;
END;
/

DECLARE
   my_book   books%ROWTYPE;
BEGIN
   SELECT *
     INTO my_book
     FROM books
    WHERE title = 'Oracle PL/SQL Programming, 5th Edition';

   IF my_book.author LIKE '%Feuerstein%'
   THEN
      DBMS_OUTPUT.put_line ('Our newest ISBN is ' || my_book.isbn);
   END IF;
END;
/