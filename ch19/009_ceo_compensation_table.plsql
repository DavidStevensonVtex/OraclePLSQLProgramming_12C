DROP TABLE ceo_compensation
/

CREATE TABLE ceo_compensation (name VARCHAR2 (100), compensation NUMBER)
/

DROP TABLE ceo_comp_history
/

CREATE TABLE ceo_comp_history
(
   name               VARCHAR2 (100)
 , old_compensation   NUMBER
 , new_compensation   NUMBER
 , action             VARCHAR2 (100)
 , changed_on         DATE
)
/

INSERT INTO ceo_compensation (name, compensation ) 
VALUES ( 'I. M. Fink', 3000000 ) ;
COMMIT ;

COLUMN name FORMAT a30
SELECT * FROM ceo_compensation ;

