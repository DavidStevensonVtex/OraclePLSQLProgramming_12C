DROP TABLE color_models
/

CREATE TABLE color_models (model_type VARCHAR2 (12), colors color_tab_t)
NESTED TABLE colors
   STORE AS color_model_colors_tab
/

BEGIN
   INSERT INTO color_models
       VALUES ('RGB', color_tab_t ('RED', 'GREEN', 'BLUE')
              );
END;
/

DECLARE
   l_colors   color_tab_t;
BEGIN
   /* Retrieve all the nested values in a single fetch.
   || This is the cool part.
   */
   SELECT colors
     INTO l_colors
     FROM color_models
    WHERE model_type = 'RGB';
END;
/

DECLARE
   color_tab   color_tab_t;
BEGIN
   SELECT colors
     INTO color_tab
     FROM color_models
    WHERE model_type = 'RGB';

   FOR element IN 1 .. color_tab.COUNT
   LOOP
      IF color_tab (element) = 'RED'
      THEN
         color_tab (element) := 'FUSCHIA';
      END IF;
   END LOOP;

   /* Here is the cool part of this example. Only one insert
   || statement is needed -- it sends the entire nested table
   || back into the color_models table in the database. */

   INSERT INTO color_models
       VALUES ('FGB', color_tab
              );
END;
/