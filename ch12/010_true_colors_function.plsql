CREATE OR REPLACE FUNCTION true_colors (whose_id IN NUMBER)
   RETURN color_tab_t
AS
   l_colors   color_tab_t;
BEGIN
   SELECT favorite_colors
     INTO l_colors
     FROM personality_inventory
    WHERE person_id = whose_id;

   RETURN l_colors;
EXCEPTION
    WHEN NO_DATA_FOUND THEN RETURN NULL ;
END;
/

DECLARE
   color_array   color_tab_t;
BEGIN
    color_array := true_colors (8041);
    -- DBMS_OUTPUT.PUT_LINE(color_array.FIRST);
    -- DBMS_OUTPUT.PUT_LINE(color_array.LAST);
    FOR  i IN color_array.FIRST .. color_array.LAST
    LOOP
        -- dbms_output.put_line(i) ;
        DBMS_OUTPUT.PUT_LINE(color_array(i));
    END LOOP ;
-- Red
-- Blue
-- Green
END;
/


DECLARE
   one_of_my_favorite_colors   VARCHAR2 (30);
BEGIN
   one_of_my_favorite_colors := true_colors (8041) (1);
END;
/