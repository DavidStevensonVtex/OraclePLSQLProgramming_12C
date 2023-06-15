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
                  100
                , '1-56592-335-9'
                , 'Oracle PL/SQL Programming'
                ,    'Reference for PL/SQL developers,'
                  || 'including examples and best practice '
                  || 'recommendations.'
                , 'Feuerstein,Steven, with Bill Pribyl'
                , TO_DATE ('01-SEP-1997', 'DD-MON-YYYY')
                , 987
              );

   COMMIT;
END;
/