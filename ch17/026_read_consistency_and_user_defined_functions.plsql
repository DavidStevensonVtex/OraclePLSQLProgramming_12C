DROP TABLE account
/

CREATE TABLE account
(
   name         VARCHAR2 (100)
 , account_id   INTEGER
 , status       VARCHAR2 (10)
)
/

DROP TABLE orders
/

CREATE TABLE orders (account_id INTEGER, sales NUMBER, ordered_on DATE)
/

CREATE OR REPLACE FUNCTION total_sales (id_in IN account.account_id%TYPE)
   RETURN NUMBER
IS
   CURSOR tot_cur
   IS
      SELECT SUM (sales) total
        FROM orders
       WHERE account_id = id_in
             AND TO_CHAR (ordered_on, 'YYYY') = TO_CHAR (SYSDATE, 'YYYY');

   tot_rec   tot_cur%ROWTYPE;
BEGIN
   OPEN tot_cur;

   FETCH tot_cur
   INTO tot_rec;

   RETURN tot_rec.total;
END;
/

SELECT name, total_sales (account_id)
  FROM account
 WHERE status = 'ACTIVE';
/