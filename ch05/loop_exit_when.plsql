DECLARE
   account_id          INTEGER;
   balance_remaining   NUMBER;

   FUNCTION account_balance (id_in IN INTEGER)
      RETURN NUMBER
   IS
   BEGIN
      RETURN 0;
   END;

   PROCEDURE apply_balance (id_in IN INTEGER, balance_in IN NUMBER)
   IS
   BEGIN
      NULL;
   END;
BEGIN
   LOOP
      balance_remaining := account_balance (account_id);

      IF balance_remaining < 1000
      THEN
         EXIT;
      ELSE
         apply_balance (account_id, balance_remaining);
      END IF;
   END LOOP;

   LOOP
      /* Calculate the balance */
      balance_remaining := account_balance (account_id);

      /* Embed the IF logic into the EXIT statement */
      EXIT WHEN balance_remaining < 1000;

      /* Apply balance if still executing the loop */
      apply_balance (account_id, balance_remaining);
   END LOOP;
END;
/