DECLARE
   SUBTYPE temperature IS NUMBER;

   SUBTYPE coordinate_axis IS PLS_INTEGER;

   TYPE temperature_x IS TABLE OF temperature
                            INDEX BY coordinate_axis;

   TYPE temperature_xy IS TABLE OF temperature_x
                             INDEX BY coordinate_axis;

   TYPE temperature_xyz IS TABLE OF temperature_xy
                              INDEX BY coordinate_axis;

   temperature_3d   temperature_xyz;
BEGIN
   temperature_3d (1) (2) (3) := 45;
END;
/