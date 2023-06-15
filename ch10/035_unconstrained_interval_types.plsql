DECLARE
   dts   INTERVAL DAY (9) TO SECOND (9);

   FUNCTION double_my_interval (dts_in IN dsinterval_unconstrained)
      RETURN dsinterval_unconstrained
   IS
   BEGIN
      RETURN dts_in * 2;
   END;
BEGIN
   dts := '100 0:0:0.123456789';
   DBMS_OUTPUT.put_line (dts);
   DBMS_OUTPUT.put_line (double_my_interval (dts));
END;
/