DROP TABLE color_models
/

CREATE OR REPLACE TYPE color_nt AS TABLE OF VARCHAR2 (30);
/

CREATE OR REPLACE TYPE color_vat AS VARRAY (16) OF VARCHAR2 (30)
/

CREATE TABLE color_models (model_type VARCHAR2 (12), colors color_vat)
/

BEGIN
   INSERT INTO color_models
       VALUES ('RGB', color_vat ('RED', 'GREEN', 'BLUE')
              );

   COMMIT;
END;
/

column color_collection format a80

SELECT colors color_collection
FROM color_models
WHERE model_type = 'RGB' ;
/

SELECT COLUMN_VALUE my_colors
  FROM table (SELECT CAST (colors AS color_nt)
                FROM color_models
               WHERE model_type = 'RGB')
/


SELECT COLUMN_VALUE my_colors
  FROM table (SELECT colors AS color_nt
                FROM color_models
               WHERE model_type = 'RGB')
/