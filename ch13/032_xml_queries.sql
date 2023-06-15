SELECT * FROM fallsxml ;
/

SELECT f.fall_id
FROM fallsxml f
WHERE f.fall.existsnode('/fall/url') > 0 ;
/

SELECT f.fall_id
FROM fallsxml f
WHERE EXISTSNODE(f.fall, '/fall/url') > 0 ;
/