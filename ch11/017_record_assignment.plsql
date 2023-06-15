DECLARE
   prev_rain_forest_rec   rain_forest_history%ROWTYPE;
   curr_rain_forest_rec   rain_forest_history%ROWTYPE;
BEGIN
   -- Transfer data from previous to current records.
   curr_rain_forest_rec := prev_rain_forest_rec;
END;
/