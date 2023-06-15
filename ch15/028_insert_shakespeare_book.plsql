INSERT INTO books ( book_id, isbn, title, summary, author, date_published, page_count )
  VALUES ( 200, '979-8844389566', 'Henry V', 
  'A new edition of William Shakespeare''s classic history play The Life of Henry the Fifth (or, more concisely, Henry V). This play tells the remarkable story of England''s King Henry V, his leadership during the Hundred Years'' War and his stunning victory at the Battle of Agincourt.', 'Shakespeare, William', 
  TO_DATE('07-AUG-2022', 'DD-MON-YYYY'), 110 ) ;
  commit ;