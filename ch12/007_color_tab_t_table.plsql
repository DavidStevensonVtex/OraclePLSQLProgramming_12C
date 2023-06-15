DROP TYPE color_tab_t FORCE
/

CREATE OR REPLACE TYPE color_tab_t IS TABLE OF VARCHAR2 (100)
/

DECLARE
   TYPE toy_rec_t IS RECORD (
      manufacturer           INTEGER
    , shipping_weight_kg     NUMBER
    , domestic_colors        color_tab_t
    , international_colors   color_tab_t
   );

   my_rec toy_rec_t ;
BEGIN
   my_rec.manufacturer := 123 ;
   my_rec.shipping_weight_kg := 4.56 ;
   my_rec.domestic_colors := color_tab_t();
   my_rec.domestic_colors.extend (2) ;
   my_rec.domestic_colors(1) := 'Red' ;
   my_rec.domestic_colors(2) := 'Green' ;
   my_rec.international_colors := color_tab_t();
   my_rec.international_colors.extend (2) ;
   my_rec.international_colors(1) := 'Rouge' ;
   my_rec.international_colors(2) := 'Vert' ;
END;
/