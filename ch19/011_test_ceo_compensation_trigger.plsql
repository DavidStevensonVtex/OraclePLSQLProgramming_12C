
INSERT INTO ceo_compensation ( name, compensation )
VALUES ( 'I. M. Fink', 1 ) ;
COMMIT ;

COLUMN name FORMAT a20
COLUMN action FORMAT a20
COLUMN changed_on FORMAT a15
SELECT * FROM ceo_comp_history ;