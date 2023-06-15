CREATE OR REPLACE TYPE names_t AS TABLE OF VARCHAR2 (100)
/

CREATE OR REPLACE TYPE authors_t AS TABLE OF VARCHAR2 (100);
/

DROP TABLE favorite_authors ;
/

CREATE TABLE favorite_authors (name VARCHAR2 (200))
/

BEGIN
   INSERT INTO favorite_authors
       VALUES ('Robert Harris'
              );

   INSERT INTO favorite_authors
       VALUES ('Tom Segev'
              );

   INSERT INTO favorite_authors
       VALUES ('Toni Morrison'
              );
END;
/

DECLARE
   scifi_favorites authors_t
         := authors_t ('Sheri S. Tepper', 'Orson Scott Card', 'Gene Wolfe');
BEGIN
   DBMS_OUTPUT.put_line ('I recommend that you read books by:');

   FOR rec IN ( SELECT COLUMN_VALUE favs
                FROM table (CAST (scifi_favorites AS names_t))
                UNION
                SELECT name
                FROM favorite_authors
                ORDER BY favs )
   LOOP
      DBMS_OUTPUT.put_line (rec.favs);
   END LOOP;
END;
/