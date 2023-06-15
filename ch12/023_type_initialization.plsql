DECLARE
   my_favorite_colors    color_tab_t := color_tab_t ();
   his_favorite_colors   color_tab_t := color_tab_t ('PURPLE');
   her_favorite_colors   color_tab_t := color_tab_t ('PURPLE', 'GREEN');
BEGIN
   NULL;
END;
/

DECLARE
   earth_colors     color_tab_t := color_tab_t ('BRICK', 'RUST', 'DIRT');
   wedding_colors   color_tab_t;
BEGIN
   wedding_colors := earth_colors;
   wedding_colors (3) := 'CANVAS';
END;
/