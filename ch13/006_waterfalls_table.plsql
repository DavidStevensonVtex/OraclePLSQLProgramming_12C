DROP TABLE waterfalls
/

CREATE TABLE waterfalls
(
   falls_name          VARCHAR2 (80)
 , falls_photo         BLOB
 , falls_directions    CLOB
 , falls_description   NCLOB
 , falls_web_page      BFILE
)
/