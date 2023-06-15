DECLARE
   ts1   timestamp WITH TIME ZONE;
   ts2   timestamp WITH TIME ZONE;
   ts3   timestamp WITH TIME ZONE;
   ts4   timestamp WITH TIME ZONE;
   ts5   DATE;
BEGIN
    -- If you omit the time zone displacement in a timestamp literal, 
    -- the time zone will default to the session time zone.

   --Two digits for fractional seconds
   ts1 := TIMESTAMP '2002-02-19 11:52:00.00 -05:00';

   --Nine digits for fractional seconds, 24-hour clock, 14:00 = 2:00 PM
   ts2 := TIMESTAMP '2002-02-19 14:00:00.000000000 -5:00';

   --No fractional seconds at all
   ts3 := TIMESTAMP '2002-02-19 13:52:00 -5:00';

   --No time zone, defaults to session time zone
   ts4 := TIMESTAMP '2002-02-19 13:52:00';

   --A date literal
   ts5 := DATE '2002-02-19';
END;
/