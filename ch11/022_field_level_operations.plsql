DECLARE
   rain_forest_rec   rain_forest_history%ROWTYPE;
BEGIN
   /* Set values for the record */
   rain_forest_rec.country_code := 1005;
   rain_forest_rec.analysis_date := ADD_MONTHS (TRUNC (SYSDATE), -3);
   rain_forest_rec.size_in_acres := 32;
   rain_forest_rec.species_lost := 425;

   /* Insert a row in the table using the record values */
--    INSERT INTO rain_forest_history (
--                                        country_code
--                                      , analysis_date
--                                      , size_in_acres
--                                      , species_lost
--               )
--        VALUES (
--                   rain_forest_rec.country_code
--                 , rain_forest_rec.analysis_date
--                 , rain_forest_rec.size_in_acres
--                 , rain_forest_rec.species_lost
--               );
    INSERT INTO rain_forest_history
    VALUES rain_forest_rec ;
END;
/