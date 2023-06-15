INSERT INTO joke ( joke_id, name, category, last_used_date, punch_line ) VALUES ( 1, 'A good start', 123, TO_DATE('06-14-2014', 'MM-DD-YYYY'), 'A good start.' ) ; 
commit ;
/

EXECUTE explain_joke ( 123 ) ;
/