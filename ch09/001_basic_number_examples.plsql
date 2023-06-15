DECLARE
   tiny_nbr   NUMBER := 1e-130;
   test_nbr   NUMBER;
   --                              1111111111222222222233333333334
   --                     1234567890123456789012345678901234567890
   big_nbr    NUMBER := 9.999999999999999999999999999999999999999e125;
   --                                 1111111111222222222233333333334444444
   --                        1234567890123456789012345678901234567890123456
   fmt_nbr VARCHAR2 (50)
         := '9.99999999999999999999999999999999999999999EEEE';
BEGIN
   DBMS_OUTPUT.put_line (
      'tiny_nbr          =' || TO_CHAR (tiny_nbr, '9.9999EEEE')
   );
   -- NUMBERs that are too small round down to zero
   test_nbr := tiny_nbr / 1.0001;
   DBMS_OUTPUT.put_line ('tiny made smaller =' || TO_CHAR (test_nbr, fmt_nbr)
                        );
   -- NUMBERs that are too large throw an error
   DBMS_OUTPUT.put_line ('big_nbr           =' || TO_CHAR (big_nbr, fmt_nbr));
   test_nbr := big_nbr * 1.0001;                                    -- too big
   DBMS_OUTPUT.put_line ('big made bigger   =' || TO_CHAR (test_nbr, fmt_nbr)
                        );
END;
/