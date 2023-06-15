SELECT *
FROM color_models c 
WHERE 'RED' IN ( SELECT * FROM TABLE (c.Colors ) ) ;
/