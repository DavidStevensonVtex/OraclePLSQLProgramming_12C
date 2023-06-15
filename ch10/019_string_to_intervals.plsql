DECLARE
   y2m    INTERVAL YEAR TO MONTH;
   d2s1   INTERVAL DAY TO SECOND;
   d2s2   INTERVAL DAY TO SECOND;
BEGIN
    -- TO_YMINTERVAL('Y-M')
    -- TO_DSINTERVAL('D HH:MI:SS.FF')
    
   y2m := TO_YMINTERVAL ('40-3');                                     --my age
   d2s1 := TO_DSINTERVAL ('10 1:02:10');
   d2s2 := TO_DSINTERVAL ('10 1:02:10.123');              --fractional seconds
END;
/