DECLARE
   low_nbr   NUMBER (38, 127);
       high_nbr number(38,-84);
BEGIN
   /* 127 is largest scale, so begin with 1 and move
      decimal point 127 places to the left. Easy. */
   low_nbr := 1E-127;
   DBMS_OUTPUT.put_line ('low_nbr = ' || low_nbr);

   /* -84 is smallest scale value. Add 37 to normalize
      the scientific-notation, and we get E+121. */
   high_nbr := 9.9999999999999999999999999999999999999E+121;
   DBMS_OUTPUT.put_line ('high_nbr = ' || high_nbr);
END;
/