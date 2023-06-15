
DROP TYPE color_tab_t FORCE
/

CREATE TYPE color_tab_t IS VARRAY (100) OF VARCHAR2 (100)
/

DROP TABLE bird_habitats
/

DROP TABLE birds 
/


CREATE TABLE birds
(
   genus     VARCHAR2 (128)
 , species   VARCHAR2 (128)
 , colors    color_tab_t
 , PRIMARY KEY (genus, species)
)
/

CREATE TABLE bird_habitats
(
   genus     VARCHAR2 (128)
 , species   VARCHAR2 (128)
 , country   VARCHAR2 (60)
 , FOREIGN KEY (genus, species) REFERENCES birds (genus, species)
)
/

DROP TYPE country_tab_t FORCE
/

CREATE TYPE country_tab_t AS TABLE OF VARCHAR2 (60)
/

DECLARE
   CURSOR bird_curs
   IS
      SELECT b.genus
           , b.species
           , CAST (
                MULTISET (
                   SELECT bh.country
                     FROM bird_habitats bh
                    WHERE bh.genus = b.genus AND bh.species = b.species
                ) AS country_tab_t
             )
        FROM birds b;

   bird_row   bird_curs%ROWTYPE;
BEGIN
   OPEN bird_curs;

   FETCH bird_curs
   INTO bird_row;

   CLOSE bird_curs;
END;
/