DECLARE
    l_colors   color_tab_t;
BEGIN
    l_colors := color_tab_t(2) ;
    l_colors.extend(2);
    l_colors(1) := 'Red' ;
    l_colors(2) := 'Blue' ;
    l_colors(3) := 'Green' ;

    INSERT INTO personality_inventory ( person_id, favorite_colors, date_tested )
    VALUES ( 8041, l_colors, SYSDATE - 30) ;
END ;
/