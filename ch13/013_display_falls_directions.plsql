SET LONG 2000
COLUMN falls_directions WORD_WRAPPED FORMAT A70
SELECT falls_directions 
FROM waterfalls 
WHERE falls_name = 'Munising Falls' ;
/